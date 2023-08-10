//
//  ContentView.swift
//  RandomUsers
//
//  Created by Brandon Kamplain on 8/7/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var userData = UserData()
    
    var body: some View {
        NavigationView {
            List(userData.users) { user in
                Text(user.fullName)
            }
            .navigationTitle("Random Users")
        }
    }
}

#Preview {
    ContentView()
}
