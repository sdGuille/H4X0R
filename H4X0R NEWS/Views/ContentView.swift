//
//  ContentView.swift
//  H4X0R NEWS
//
//  Created by Guillermo Ruiz on 26/8/22.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
            }
            .navigationTitle("H4X0R NEWS")
        }
        .onAppear {
            networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//let posts = [
//    Post(id: "1", title: "Apple is Rising"),
//    Post(id: "2", title: "Windows 11 vs Mac OS Monterrey"),
//    Post(id: "3", title: "Justin Biber it's comming to learn Swift")
//]
