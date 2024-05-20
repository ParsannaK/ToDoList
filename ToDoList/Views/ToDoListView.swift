//
//  ToDoListItemsView.swift
//  ToDoList
//
//  Created by Prasanna Koirala on 5/19/24.
//

import SwiftUI

struct ToDoListView: View {
    var body: some View {
		VStack {
			
		}
		.navigationTitle("To Do List")
		.toolbar {
			Button {
				//Action
			} label: {
				Image(systemName: "plus")
			}
		}
    }
}

#Preview {
    ToDoListView()
}
