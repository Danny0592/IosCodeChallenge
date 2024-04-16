//
//  ContentViewModelTests.swift
//  IosCodeChallengeTests
//
//  Created by daniel ortiz millan on 15/04/24.
//

import XCTest
@testable import IosCodeChallenge

final class TitleListViewModelTests: XCTestCase {
    
    func testgetPosts() {
        
        // Given
        var viewModel: PostsProtocol = MockTitleLisViewModel()
        
        viewModel.getPosts()
        
        var posts = viewModel.postTitle

        // When

        // Then
         
        XCTAssertNotNil(posts)
        XCTAssertEqual("sunt aut facere repellat provident occaecati excepturi optio reprehenderit", posts?.first?.title)
   
     
    }

    
    }


