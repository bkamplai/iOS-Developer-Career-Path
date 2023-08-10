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
                HStack {
                    AsyncImage(url: URL(string: user.picture.thumbnail)) { image in
                        image.clipShape(Circle())
                    } placeholder: {
                        Image(systemName: "person")
                            .frame(width: 50, height: 50, alignment: .center)
                    }
                    Text(user.fullName)
                }
            }
            .navigationTitle("Random Users")
        }
    }
}

#Preview {
    ContentView()
}
