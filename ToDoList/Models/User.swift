//
//  User.swift
//  ToDoList
//
//  Created by Prasanna Koirala on 5/19/24.
//

import Foundation

struct User: Codable {
	let id: String
	let name: String
	let email: String
	let joined: TimeInterval
}

