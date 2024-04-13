//
//  TitleView.swift
//  IosCodeChallenge
//
//  Created by daniel ortiz millan on 12/04/24.
//

import SwiftUI

struct TitleListView: View {
    @ObservedObject var viewModel = TitleListViewModel()
    
    var body: some View {
        
        NavigationView {
            VStack {
                List {
                    ForEach(viewModel.PostsTitle ?? [], id:\.id) { item in
                        NavigationLink(
                            destination: PostDetailView(PostSelected: item),
                            label: {
                                Text(item.title)
                            })
                    }
                }
                .navigationTitle("Posts Titles")
                .onAppear {
                    viewModel.getPosts()
                }
            }
            
        }
    }
}
