//
//  Model.swift
//  IosCodeChallenge
//
//  Created by daniel ortiz millan on 12/04/24.
//

import Foundation
// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let iosCodeChallengeTtle = try? JSONDecoder().decode(IosCodeChallengeTtle.self, from: jsonData)


// MARK: - IosCodeChallengeTtleElement
struct IosCodeChallengeTtleElement: Codable {
    let userID, id: Int
    let title, body: String

    enum CodingKeys: String, CodingKey {
        case userID = "userId"
        case id, title, body
    }
}

typealias IosCodeChallengeTtle = [IosCodeChallengeTtleElement]
