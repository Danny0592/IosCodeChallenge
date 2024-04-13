//
//  TitleApiClient.swift
//  IosCodeChallenge
//
//  Created by daniel ortiz millan on 12/04/24.
//

import Foundation


class APIClient {
    
    func getDetails(completion: @escaping (Result<[PostComents], Error>) -> Void) {
        
        var request = URLRequest(url: URL(string: "http://jsonplaceholder.typicode.com/comments")!,timeoutInterval: Double.infinity)
        request.httpMethod = "GET"
        
        let _: Void = URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data else {
                if let error = error {
                    print("Error: \(error)")
                } else {
                    print("No data received")
                }
                return
            }
            
            print(String(data: data, encoding: .utf8)!)
            
            do {
                
                let result = try JSONDecoder().decode([PostComents].self, from: data)
                completion(.success(result))
            } catch {
                print("Error decoding JSON:\(error)")
                completion(.failure(error))
            }
        }.resume()
        
    }
    
//"GET REQUEST" TO GET POSTS TITLES
    
    func getPostsapi(completion: @escaping (Result<[Post], Error>) -> Void) {
        
        var request = URLRequest(url: URL(string: "https://jsonplaceholder.typicode.com/posts")!,timeoutInterval: Double.infinity)
        request.httpMethod = "GET"
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data else {
                if let error = error {
                    print("Error: \(error)")
                } else {
                    print("No data received")
                }
                return
            }
            
            print(String(data: data, encoding: .utf8)!)
            
            do {
                
                let result = try JSONDecoder().decode([Post].self, from: data)
                completion(.success(result))
            } catch {
                print("Error decoding JSON:\(error)")
                completion(.failure(error))
            }
        }.resume()
        
    }
    
}
