//
//  AuthView.swift
//  Socialcademy
//
//  Created by Brandon Kamplain on 8/12/23.
//

import SwiftUI

struct AuthView: View {
    @StateObject var viewModel = AuthViewModel()
    
    var body: some View {
        if let viewModelFactory = viewModel.makeViewModelFactory() {
            MainTabView()
                .environmentObject(viewModelFactory)
        } else {
            NavigationView {
                SignInForm(viewModel: viewModel.makeSignInViewModel()) {
                    NavigationLink("Create Account", destination: CreateAccountForm(viewModel: viewModel.makeCreateAccountViewModel()))
                }
            }
        }
    }
}

private extension AuthView {
    struct CreateAccountForm: View {
        @StateObject var viewModel: AuthViewModel.CreateAccountViewModel
        
        @Environment(\.dismiss) private var dismiss
        
        var body: some View {
            Form {
                TextField("Name", text: $viewModel.name)
                    .textContentType(.name)
                    .textInputAutocapitalization(.words)
                TextField("Email", text: $viewModel.email)
                    .textContentType(.emailAddress)
                    .textInputAutocapitalization(.never)
                SecureField("Password", text: $viewModel.password)
                    .textContentType(.newPassword)
            } footer: {
                Button("Create Account", action: viewModel.submit)
                    .buttonStyle(.primary)
                Button("Sign In", action: dismiss.callAsFunction)
                    .padding()
            }
            .onSubmit(viewModel.submit)
            .alert("Cannot Create Account", error: $viewModel.error)
            .disabled(viewModel.isWorking)
        }
    }
    
    struct SignInForm<Footer: View>: View {
        @StateObject var viewModel: AuthViewModel.SignInViewModel
        @ViewBuilder let footer: () -> Footer
        
        var body: some View {
            Form {
                TextField("Email", text: $viewModel.email)
                    .textContentType(.emailAddress)
                    .textInputAutocapitalization(.never)
                SecureField("Password", text: $viewModel.password)
                    .textContentType(.password)
            } footer: {
                Button("Sign In", action: viewModel.submit)
                    .buttonStyle(.primary)
                footer()
                    .padding()
            }
            .onSubmit(viewModel.submit)
            .alert("Cannot Sign In", error: $viewModel.error)
            .disabled(viewModel.isWorking)
        }
    }
    
    struct Form<Content: View, Footer: View>: View {
        @ViewBuilder let content: () -> Content
        @ViewBuilder let footer: () -> Footer
        
        var body: some View {
            VStack {
                Text("Socialcademy")
                    .font(.title.bold())
                content()
                    .padding()
                    .background(Color.secondary.opacity(0.15))
                    .cornerRadius(10)
                footer()
            }
            .navigationBarHidden(true)
            .padding()
        }
    }
}

#Preview {
    AuthView()
}
