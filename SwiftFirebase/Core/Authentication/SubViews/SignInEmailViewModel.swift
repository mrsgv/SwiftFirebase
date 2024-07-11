//
//  SignInEmailViewModel.swift
//  SwiftFirebase
//
//  Created by sgv on 11/07/24.
//

import SwiftUI

@MainActor
final class SignInEmailViewModel : ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    func signUp() async throws {
        guard !email.isEmpty, !password.isEmpty else {
            print("No email or password found")
            return
        }
        let _ = try await AuthenticationManager.shared.createUser(email: email, password: password)
    }
    
    func signIn() async throws {
        guard !email.isEmpty, !password.isEmpty else {
            print("No email or password found")
            return
        }
        let _ = try await AuthenticationManager.shared.signInUser(email: email, password: password)
    }
}
