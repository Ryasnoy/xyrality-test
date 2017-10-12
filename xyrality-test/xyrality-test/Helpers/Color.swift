//
//  Color.swift
//  xyrality-test
//
//  Created by Kizzu on 12.10.17.
//  Copyright © 2017 ryasnoy. All rights reserved.
//

import UIKit

enum Color {
  case green
  case darkGray
}

extension Color {
  var value: UIColor {
    var instanceColor = UIColor.clear
    
    switch self {
    case .green: instanceColor = UIColor(red: 211/255, green: 216/255, blue: 62/255, alpha: 1)
    case .darkGray: instanceColor = UIColor.darkGray
    }
    return instanceColor
  }
}
