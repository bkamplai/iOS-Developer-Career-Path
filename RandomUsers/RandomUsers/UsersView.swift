//
//  UsersView.swift
//  RandomUsers
//
//  Created by Brandon Kamplain on 8/7/23.
//

import SwiftUI

struct UsersView: View {
    @StateObject var userData = UserData()
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Raw JSON Data:")
                ScrollView {
                    Text(userData.users)
                }
            }
            .padding()
            .navigationTitle("Random Users")
        }
    }
}

#Preview {
    UsersView()
}
