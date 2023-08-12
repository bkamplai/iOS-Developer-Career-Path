//
//  PostViewModel.swift
//  Socialcademy
//
//  Created by Brandon Kamplain on 8/11/23.
//

import Foundation

@MainActor
class PostViewModel: ObservableObject {
    @Published var posts: Loadable<[Post]> = .loading
    
    enum Filter {
        case all, favorites
    }
    
    private let postsRepository: PostsRepositoryProtocol
    private let filter: Filter
    
    init(filter: Filter = .all, postsRepository: PostsRepositoryProtocol = PostsRepository()) {
        self.filter = filter
        self.postsRepository = postsRepository
    }
    
    var title: String {
        switch filter {
        case .all:
            return "Posts"
        case .favorites:
            return "Favorites"
        }
    }
    
    func makeCreatAction() -> NewPostForm.CreateAction {
        return { [weak self] post in
            try await self?.postsRepository.create(post)
            self?.posts.value?.insert(post, at: 0)
        }
    }
    
    func fetchPosts() {
        Task {
            do {
                posts = .loaded(try await postsRepository.fetchPosts(matching: filter))
            } catch {
                print("[PostViewModel] Cannot fetch posts: \(error)")
                posts = .error(error)
            }
        }
    }
    
    func makePostRowViewModel(for post: Post) -> PostRowViewModel {
        return PostRowViewModel(
            post: post,
            deleteAction: { [weak self] in
                try await self?.postsRepository.delete(post)
                self?.posts.value?.removeAll { $0 == post }
            },
            favoriteAction: { [weak self] in
                let newValue = !post.isFavorite
                try await newValue ? self?.postsRepository.favorite(post) : self?.postsRepository.unfavorite(post)
                guard let i = self?.posts.value?.firstIndex(of: post) else { return }
                self?.posts.value?[i].isFavorite = newValue
            }
        )
    }
}

private extension PostsRepositoryProtocol {
    func fetchPosts(matching filter: PostViewModel.Filter) async throws -> [Post] {
        switch filter {
        case .all:
            return try await fetchAllPosts()
        case .favorites:
            return try await fetchFavoritePosts()
        }
    }
}
