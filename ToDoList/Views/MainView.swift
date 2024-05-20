//
//  ContentView.swift
//  ToDoList
//
//  Created by Prasanna Koirala on 5/19/24.
//

import SwiftUI

struct MainView: View {
	@StateObject var viewModel = MainViewViewModel()
	
    var body: some View {
		if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty {
			// signed in screen
			TabView {
				ToDoListView()
					.tabItem {
						Label("Home", systemImage: "house")
					}
				ProfileView()
					.tabItem {
						Label("Profile", systemImage: "person.circle")
					}
			}
		} else {
			LoginView()
		}
    }
}

#Preview {
    MainView()
}
