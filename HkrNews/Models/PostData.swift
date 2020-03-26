//
//  PostData.swift
//  HkrNews
//
//  Created by Shivaansh Prasann on 2020-03-24.
//  Copyright © 2020 ShivStuff. All rights reserved.
//

import Foundation
// This file contains structs which decide the structure of data to be retrieved from the API return object


//Collection of results derived from network
struct Results: Decodable{
    let hits: [Post]
}

//Format used by JSON decoder to extract information from network data object
struct Post: Decodable, Identifiable{
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
