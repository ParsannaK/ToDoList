//
//  ProfileView.swift
//  ToDoList
//
//  Created by Prasanna Koirala on 5/19/24.
//

import SwiftUI

struct ProfileView: View {
	@StateObject var viewModel = ProfileViewViewModel()
	
	var body: some View {
		NavigationView {
			VStack {
				
			}
			.navigationTitle("Profile")
		} //nav view
	} //body
} //struct

#Preview {
    ProfileView()
}
