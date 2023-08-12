//
//  PostsList.swift
//  Socialcademy
//
//  Created by Brandon Kamplain on 8/10/23.
//

import SwiftUI

struct PostsList: View {
    @StateObject var viewModel = PostViewModel()
    
    @State private var searchText = ""
    @State private var showNewPostForm = false
    
    var body: some View {
        NavigationView {
            List(viewModel.posts) { post in
                if searchText.isEmpty || post.contains(searchText) {
                    PostRow(post: post)
                }
            }
            .searchable(text: $searchText)
            .navigationTitle("Posts")
            .toolbar {
                Button {
                    showNewPostForm = true
                } label: {
                    Label("New Post", systemImage: "square.and.pencil")
                }
            }
        }
        .sheet(isPresented: $showNewPostForm) {
            NewPostForm(createAction: viewModel.makeCreatAction())
        }
    }
}

#Preview {
    PostsList()
}
