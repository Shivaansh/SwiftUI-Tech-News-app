//
//  NetworkManager.swift
//  HkrNews
//
//  Created by Shivaansh Prasann on 2020-03-24.
//  Copyright © 2020 ShivStuff. All rights reserved.
//

import Foundation

//This class contains logic to retrive a data object from a URL and decode the object using a JSON decoder
class NetworkManager: ObservableObject{
    //array of posts @Published
    
    @Published var posts = [Post]()
    
    func fetchData() {
        if let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error == nil{
                    let decoder = JSONDecoder()
                    if let safeData = data{
                        do{
                            let results = try decoder.decode(Results.self, from: safeData) //Format, data object
                            DispatchQueue.main.async {
                                self.posts = results.hits
                            }
                        }catch{
                            print(error)
                        }
                    }
                }else{
                    print(error)
                }
            }
            task.resume()
        }
    }
    
}
