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
    
    private let postsRepository: PostsRepositoryProtocol
    
    init(postsRepository: PostsRepositoryProtocol = PostsRepository()) {
        self.postsRepository = postsRepository
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
                posts = .loaded(try await postsRepository.fetchPosts())
            } catch {
                print("[PostViewModel] Cannot fetch posts: \(error)")
                posts = .error(error)
            }
        }
    }
}
