//
//  PostViewModel.swift
//  Socialcademy
//
//  Created by Brandon Kamplain on 8/11/23.
//

import Foundation

@MainActor
class PostViewModel: ObservableObject {
    @Published var posts = [Post.testPost]
    
    func makeCreatAction() -> NewPostForm.CreateAction {
        return { [weak self] post in
            try await PostsRepository.create(post)
            self?.posts.insert(post, at: 0)
        }
    }
}
