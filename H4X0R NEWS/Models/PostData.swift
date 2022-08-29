//
//  PostData.swift
//  H4X0R NEWS
//
//  Created by Guillermo Ruiz on 26/8/22.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
