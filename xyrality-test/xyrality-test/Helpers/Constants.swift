//
//  Constants.swift
//  xyrality-test
//
//  Created by Kizzu on 12.10.17.
//  Copyright © 2017 ryasnoy. All rights reserved.
//

import Foundation

//MARK: - API

enum API {
  
  static let baseURL = "https://jsonplaceholder.typicode.com"
 
  enum route {
    static let users = "/users"
  }
  
}


//MARK: - UI

enum Storyboard: String {
  case WorldList
}

enum Controller: String {
  case WorldListNavController
}

enum Cell: String {
  case WorldListCell
}
