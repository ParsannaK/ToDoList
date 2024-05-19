//
//  RegisterView.swift
//  ToDoList
//
//  Created by Prasanna Koirala on 5/19/24.
//

import SwiftUI

struct RegisterView: View {
    var body: some View {
		VStack {
			//Header
			HeaderView(title: "Register",
					   subtitle: "Get Things Done",
					   angle: -15,
					   backgroundColor: .orange)
			
			Spacer()
		}
    }
}

#Preview {
    RegisterView()
}
