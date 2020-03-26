//
//  ContentView.swift
//  HkrNews
//
//  Created by Shivaansh Prasann on 2020-03-24.
//  Copyright © 2020 ShivStuff. All rights reserved.
//

import SwiftUI


struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView{
            //for every post in posts array, create a Text object
            List(networkManager.posts) { post in
                //create navigation link to detail view, label is content of link
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
            }
            .navigationBarTitle("HKR News")
        }.onAppear {
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

