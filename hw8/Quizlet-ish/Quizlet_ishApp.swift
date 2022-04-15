//
//  Quizlet_ishApp.swift
//  Quizlet-ish
//
//  Created by Sean She on 4/14/22.
//

import SwiftUI
import Firebase

@main
struct Quizlet_ishApp: App {
    
    init() {
        FirebaseApp.configure()
        AuthenticationService.signIn()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
