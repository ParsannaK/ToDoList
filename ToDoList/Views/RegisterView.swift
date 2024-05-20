//
//  RegisterView.swift
//  ToDoList
//
//  Created by Prasanna Koirala on 5/19/24.
//

import SwiftUI

struct RegisterView: View {
	
	@StateObject var viewModel = RegisterViewViewModel()
	
    var body: some View {
		VStack {
			//Header
			HeaderView(title: "Register",
					   subtitle: "Get Things Done",
					   angle: -15,
					   backgroundColor: .orange)
			
			Form {
				if !viewModel.errorMessage.isEmpty {
					Text(viewModel.errorMessage)
						.foregroundColor(Color.red)
				}
				
				TextField("Full Name", text: $viewModel.name)
					.autocorrectionDisabled()
				TextField("Email Address", text: $viewModel.email)
					.autocapitalization(.none)
					.autocorrectionDisabled()
				SecureField("Password", text: $viewModel.password)
					.autocapitalization(.none)
				
				TLButton(title: "Register", backgroundColor: .green) {
					//Attempt registration
					viewModel.register()
				}
			}
			.offset(y: -50)
			
			Spacer()
		}
    }
}

#Preview {
    RegisterView()
}
