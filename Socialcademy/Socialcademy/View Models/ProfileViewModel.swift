//
//  ProfileViewModel.swift
//  Socialcademy
//
//  Created by Brandon Kamplain on 8/18/23.
//

import Foundation

@MainActor
class ProfileViewModel: ObservableObject, StateManager {
    @Published var name: String
    @Published var imageURL: URL? {
        didSet {
            imageURLDidChange(from: oldValue)
        }
    }
    @Published var error: Error?
    @Published var isWorking = false
    
    private let authService: AuthService
    
    init(user: User, authService: AuthService) {
        self.name = user.name
        self.imageURL = user.imageURL
        self.authService = authService
    }
    
    private func imageURLDidChange(from oldValue: URL?) {
        guard imageURL != oldValue else { return }
        withStateManagingTask { [self] in
            try await authService.updateProfileImage(to: imageURL)
        }
    }
    
    func signOut() {
        withStateManagingTask(perform: authService.signOut)
    }
}
