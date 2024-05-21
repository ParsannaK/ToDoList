//
//  ToDoListItemsView.swift
//  ToDoList
//
//  Created by Prasanna Koirala on 5/19/24.
//

import FirebaseFirestoreSwift
import SwiftUI

struct ToDoListView: View {
	@StateObject var viewModel = ToDoListViewViewModel()
	@FirestoreQuery var items: [ToDoListItem]
	
	
	init(userId: String) {
		self._items = FirestoreQuery(collectionPath: "users/\(userId)/todos")
	}
	
	var body: some View {
		NavigationView {
			VStack {
				List(items) { item in
					Text(item.title)
				}
				//.listStyle(PlainListStyle())
			}
			.navigationTitle("To Do List")
			.toolbar {
				Button {
					//Action
					viewModel.showingNewItemView = true
				} label: {
					Image(systemName: "plus")
				}
			} //toolbar
			.sheet(isPresented: $viewModel.showingNewItemView) {
				NewItemView(newItemPresented: $viewModel.showingNewItemView)
			} //sheet
		} //nav view
	} //body
} //struct

#Preview {
	ToDoListView(userId: "8DG07vOm1cSOBesxPfoovtkeg4C2")
}
