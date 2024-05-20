//
//  LoginViewViewModel.swift
//  ToDoList
//
//  Created by Prasanna Koirala on 5/19/24.
//

import FirebaseAuth
import Foundation

class LoginViewViewModel: ObservableObject {
	@Published var email = ""
	@Published var password = ""
	@Published var errorMessage = ""
	
	init() {}
	
	func login() {
		guard validate() else {
			return
		}
		
		//Try to log the user in using firebase authentication
		Auth.auth().signIn(withEmail: email, password: password)
		
	}
	
	private func validate() -> Bool {
		errorMessage = ""
		guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
			  !password.trimmingCharacters(in: .whitespaces).isEmpty else {
			
			errorMessage = "Please fill in all fields."
			return false
		}
		
		//validating email
		guard email.contains("@") && email.contains(".") else  {
			errorMessage = "Please enter an valid email address."
			return false
		}
		return true;
	}
}
