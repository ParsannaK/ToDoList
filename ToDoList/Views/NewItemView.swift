//
//  NewItemView.swift
//  ToDoList
//
//  Created by Prasanna Koirala on 5/19/24.
//

import SwiftUI

struct NewItemView: View {
	@StateObject var viewModel = NewItemViewViewModel()
	@Binding var newItemPresented: Bool
	
    var body: some View {
		VStack {
			Text("New Item")
				.bold()
				.font(.system(size: 32))
			
			Form {
				//Title
				TextField("Title", text: $viewModel.title)
				
				//Due date
				DatePicker("Due Date", selection: $viewModel.dueDate)
					.datePickerStyle(GraphicalDatePickerStyle())
				
				//buttom
				TLButton(title: "Save", backgroundColor: .pink) {
					if viewModel.canSave {
						viewModel.save()
						newItemPresented = false
					} else {
						viewModel.showAlert = true
					}
				} //TLButton
			} //Form
			.alert(isPresented: $viewModel.showAlert) {
				Alert(title: Text("Error"), message: Text("Please fill in all the fields and choose a date that is today or newer."))
			} //alert
		} //vstack
		.padding(.top, 10)
		
    } //body
} //struct

#Preview {
	NewItemView(newItemPresented: Binding(get: {
		return true
	}, set: { _ in
		
	}))
}
