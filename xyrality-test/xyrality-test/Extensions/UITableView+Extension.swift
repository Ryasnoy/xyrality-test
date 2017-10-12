//
//  UITableView+Extension.swift
//  xyrality-test
//
//  Created by Kizzu on 12.10.17.
//  Copyright © 2017 ryasnoy. All rights reserved.
//

import UIKit

extension UITableView {
  
  func register(cell: Cell) { 
    register(UINib(nibName: cell.rawValue, bundle: nil), forCellReuseIdentifier: cell.rawValue)
  }
  
}


