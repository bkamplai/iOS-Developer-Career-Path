//
//  CommentRowViewModel.swift
//  Socialcademy
//
//  Created by Brandon Kamplain on 8/14/23.
//

import Foundation

@MainActor
@dynamicMemberLookup
class CommentRowViewModel: ObservableObject, ErrorHandler {
    typealias Action = () async throws -> Void
    
    @Published var comment: Comment
    @Published var error: Error?
    
    private let deleteAction: Action?
    
    var canDeleteComment: Bool { deleteAction != nil }
    
    subscript<T>(dynamicMember keyPath: KeyPath<Comment, T>) -> T {
        comment[keyPath: keyPath]
    }
    
    init(comment: Comment, deleteAction: Action?) {
        self.comment = comment
        self.deleteAction = deleteAction
    }
    
    func deleteComment() {
        guard let deleteAction = deleteAction else {
            preconditionFailure("Cannot delete comment: no delete action provided")
        }
        withErrorHandlingTask(perform: deleteAction)
    }
}
