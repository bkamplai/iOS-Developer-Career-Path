//
//  ProfileView.swift
//  Socialcademy
//
//  Created by Brandon Kamplain on 8/12/23.
//

import SwiftUI
import FirebaseAuth

struct ProfileView: View {
    var body: some View {
        Button("Sign Out", action: {
            try! Auth.auth().signOut()
        })
    }
}

#Preview {
    ProfileView()
}
