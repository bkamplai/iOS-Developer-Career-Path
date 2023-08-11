//
//  SocialcademyApp.swift
//  Socialcademy
//
//  Created by Brandon Kamplain on 8/10/23.
//

import SwiftUI
import Firebase

@main
struct SocialcademyApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
