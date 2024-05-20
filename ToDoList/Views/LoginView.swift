//
//  LoginView.swift
//  ToDoList
//
//  Created by Prasanna Koirala on 5/19/24.
//

import SwiftUI

struct LoginView: View {
	
	@StateObject var viewModel = LoginViewViewModel()
	
    var body: some View {
		NavigationView {
			VStack {
				//Header
				HeaderView(title: "To Do List",
						   subtitle: "Get Things Done",
						   angle: 15,
						   backgroundColor: .pink)
				
				//Login Form
				Form {
					if !viewModel.errorMessage.isEmpty {
						Text(viewModel.errorMessage)
							.foregroundColor(Color.red)
					}
					
					TextField("Email Address", text: $viewModel.email)
						.autocapitalization(.none)
						.autocorrectionDisabled()
					SecureField("Password", text: $viewModel.password)
					
					TLButton(title: "Log In", backgroundColor: .blue) {
						// attempted log in
						viewModel.login()
					}
				}
				.offset(y: -50)
				
				//Create Account
				VStack {
					Text("New around here?")
					NavigationLink("Create An Account", destination: RegisterView())
					
				}
				.padding(.bottom, 15	)
				
				Spacer()
			}
		}
    }
}

#Preview {
    LoginView()
}
