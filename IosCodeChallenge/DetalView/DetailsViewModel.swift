//
//  DetailsViewModel.swift
//  IosCodeChallenge
//
//  Created by daniel ortiz millan on 13/04/24.
//

import Foundation


class DetailsViewModel: ObservableObject {
    @Published var comentsPosts: [PostComents]?
    @Published var error: Error?
    
    let ApiClient2 = APIClient()
    
    func getDetails(for post : Post) {
        ApiClient2.getDetails() { result in
            DispatchQueue.main.async {
                
                switch result {
                case .success(let details):
                    self.comentsPosts = details
                    print("results \(String(describing: self.comentsPosts))")
                case .failure(let error):
                    print("Error fetching post: \(error)")
                }
                
            }
        }
        
    }
}
