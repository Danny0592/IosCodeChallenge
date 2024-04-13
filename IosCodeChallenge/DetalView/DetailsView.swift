//
//  DetailsView.swift
//  IosCodeChallenge
//
//  Created by daniel ortiz millan on 13/04/24.
//

import SwiftUI

struct PostDetailView: View {
    @ObservedObject var viewModel = DetailsViewModel()
    
    let PostSelected: Post
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Title: \(PostSelected.title)")
                .font(.title)
                .fontWeight(.bold)
                .padding(.bottom, 10)
            
            Text("Body: \(PostSelected.body)")
                .padding(.bottom, 20)
            Text("Number of Comments: \(PostSelected.id)")
                .foregroundColor(.blue)
                .padding()
            
            if viewModel.comentsPosts != nil {
                
            }
            Spacer()
            
        }
        .padding()
        //.navigationTitle(PostSelected.title)
        
    }
}

