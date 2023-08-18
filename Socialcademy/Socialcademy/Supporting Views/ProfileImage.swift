//
//  ProfileImage.swift
//  Socialcademy
//
//  Created by Brandon Kamplain on 8/18/23.
//

import SwiftUI

struct ProfileImage: View {
    let url: URL?
    
    var body: some View {
        GeometryReader { proxy in
            AsyncImage(url: url) { image in
                image
                    .resizable()
                    .scaledToFill()
            } placeholder: {
                Color.clear
            }
            .frame(width: proxy.size.width, height: proxy.size.height)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.gray.opacity(0.25)))
        }
    }
}

#Preview {
    ProfileImage(url: URL(string: "https://source.unsplash.com/lw9LrnpUmWw/480x480"))
}
