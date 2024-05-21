//
//  ToDoListItemView.swift
//  ToDoList
//
//  Created by Prasanna Koirala on 5/19/24.
//

import SwiftUI

struct ToDoListItemView: View {
	let item: ToDoListItem
	
    var body: some View {
		HStack {
			VStack(alignment: .leading) {
				Text(item.title)
				Text("\(Date(timeIntervalSince1970: item.dueDate).formatted(date: .abbreviated, time: .shortened))")
			} //vstack
			Spacer()
		}
    }
}
 
#Preview {
	ToDoListItemView(item: .init(id: "123", title: "Get Milk", dueDate: Date().timeIntervalSince1970, createdDate: Date().timeIntervalSince1970, isDone: false))
}
