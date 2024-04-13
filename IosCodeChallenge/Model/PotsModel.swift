//
//  PotsModel.swift
//  IosCodeChallenge
//
//  Created by daniel ortiz millan on 13/04/24.
//

import Foundation
// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let posts = try? JSONDecoder().decode(Posts.self, from: jsonData)

import Foundation

// MARK: - Post
struct Post: Codable {
    let userID: Int
    let id: Int
    var title: String
    let body: String

    enum CodingKeys: String, CodingKey {
        case userID = "userId"
        case id, title, body
    }
}
