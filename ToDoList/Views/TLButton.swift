//
//  TLButton.swift
//  ToDoList
//
//  Created by Prasanna Koirala on 5/19/24.
//

import SwiftUI

struct TLButton: View {
	let title: String
	let backgroundColor: Color
	
	let action: () -> Void
	
    var body: some View {
		Button(
			action: {
			action()
		}, label: {
			ZStack {
				RoundedRectangle(cornerRadius: 10)
					.foregroundColor(backgroundColor)
				Text(title)
					.bold()
					.foregroundColor(Color.white)
					.font(.system(size: 20))
			}
			.padding()
		})
    }
}

#Preview {
	TLButton(title: "Value", backgroundColor: .pink) {
		//Action
	}
}
