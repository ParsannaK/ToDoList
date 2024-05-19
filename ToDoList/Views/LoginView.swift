//
//  LoginView.swift
//  ToDoList
//
//  Created by Prasanna Koirala on 5/19/24.
//

import SwiftUI

struct LoginView: View {
	
	@State var email = ""
	@State var password = ""
	
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
					
					TextField("Email Address", text: $email)
					SecureField("Password", text: $password)
					
					Button(
						action: {
						//attempt log in
					}, label: {
						ZStack {
							RoundedRectangle(cornerRadius: 10)
								.foregroundColor(Color.blue)
							Text("Log in")
								.bold()
								.foregroundColor(Color.white)
								.font(.system(size: 20))
						}
						.padding()
					})
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
