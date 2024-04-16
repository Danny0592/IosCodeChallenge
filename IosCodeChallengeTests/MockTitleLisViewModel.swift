//
//  MockTitleLisViewModel.swift
//  IosCodeChallenge
//
//  Created by daniel ortiz millan on 15/04/24.
//

import Foundation
@testable import IosCodeChallenge

class MockTitleLisViewModel: PostsProtocol {
    var postTitle: [IosCodeChallenge.Post]?
    
    
    func getPosts() {
        postTitle = [Post(userID: 1, id: 1, title: "sunt aut facere repellat provident occaecati excepturi optio reprehenderit", body: "")]
    }
    
    
    
}
