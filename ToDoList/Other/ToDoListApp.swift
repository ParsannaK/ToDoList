//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Prasanna Koirala on 5/19/24.
//

import FirebaseCore
import SwiftUI

@main
struct ToDoListApp: App {
	init() {
		FirebaseApp.configure()
	}
	
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
