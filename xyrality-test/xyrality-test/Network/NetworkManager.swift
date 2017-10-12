//
//  NetworkManager.swift
//  xyrality-test
//
//  Created by Kizzu on 12.10.17.
//  Copyright © 2017 ryasnoy. All rights reserved.
//

import Foundation

class NetworkManager {
  
  static let shared = NetworkManager(baseURL: API.baseURL)
  
  let baseURL: String
  
  private init(baseURL: String) {
    self.baseURL = baseURL
  }
  
  func getUsers(_ complete: @escaping ([User])->()) {
    guard let route = URL(string: baseURL + API.route.users) else {return}
    let request = URLRequest(url: route)
    
    let task = URLSession.shared.dataTask(with: request) { data, response, error in
      
      guard let data = data else {return}
      
      do {
        let data = try JSONDecoder().decode([User].self, from: data)
        complete(data)
      } catch let jsonErr {
        print("Error serializing json:", jsonErr)
      }
      
    }
    task.resume()
  }
  
  
}

