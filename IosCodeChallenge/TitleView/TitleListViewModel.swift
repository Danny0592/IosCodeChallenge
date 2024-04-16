//
//  titleViewModel.swift
//  IosCodeChallenge
//
//  Created by daniel ortiz millan on 12/04/24.
//

import Foundation

protocol PostsProtocol {
    var postTitle: [Post]? { get }
    func getPosts()
}


class TitleListViewModel: ObservableObject, PostsProtocol {
    var postTitle: [Post]?
    
    @Published var PostsTitle: [Post]?
    @Published var error: Error?
    
    let ApiClient = APIClient()
    
    func getPosts() {
        ApiClient.getPostsapi { result in
            DispatchQueue.main.async {
                
                switch result {
                case .success(let posts):
                    self.PostsTitle = posts
                    print("results \(String(describing: self.PostsTitle))")
                case .failure(let error):
                    print("Error fetching post: \(error)")
                }
                
            }
        }
        
    }
}
