//
//  NewPostForm.swift
//  Socialcademy
//
//  Created by Brandon Kamplain on 8/11/23.
//

import SwiftUI

struct NewPostForm: View {
    @StateObject var viewModel: FormViewModel<Post>
    
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Title", text: $viewModel.title)
                }
                ImageSelection(imageURL: $viewModel.imageURL)
                Section("Content") {
                    TextEditor(text: $viewModel.content)
                        .multilineTextAlignment(.leading)
                }
                Button(action: viewModel.submit) {
                    if viewModel.isWorking {
                        ProgressView()
                    } else {
                        Text("Create Post")
                    }
                }
                .font(.headline)
                .frame(maxWidth: .infinity)
                .foregroundColor(.white)
                .padding()
                .listRowBackground(Color.accentColor)
            }
            .onSubmit(viewModel.submit)
            .navigationTitle("New Post")
        }
        .disabled(viewModel.isWorking)
        .alert("Cannot Create Post", error: $viewModel.error)
        .onChange(of: viewModel.isWorking) { isWorking in
            guard !isWorking, viewModel.error == nil else { return }
            dismiss()
        }
    }
}

private extension NewPostForm {
    struct ImageSelection: View {
        @Binding var imageURL: URL?
        
        var body: some View {
            Section("Image") {
                AsyncImage(url: imageURL) { image in
                    image
                        .resizable()
                        .scaledToFit()
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                } placeholder: {
                    EmptyView()
                }
                ImagePickerButton(imageURL: $imageURL) {
                    Label("Choose Image", systemImage: "photo.fill")
                }
            }
        }
    }
}

struct NewPostForm_Previews: PreviewProvider {
    static var previews: some View {
        NewPostForm(viewModel: FormViewModel(initialValue: Post.testPost, action: { _ in }))
    }
}
