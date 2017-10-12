//
//  Loader.swift
//  xyrality-test
//
//  Created by Kizzu on 12.10.17.
//  Copyright © 2017 ryasnoy. All rights reserved.
//

import UIKit

class Loader {
  
  static func controller(from storyboard: Storyboard, controller: Controller) -> UIViewController {
    return UIStoryboard(name: storyboard.rawValue, bundle: nil).instantiateViewController(withIdentifier: controller.rawValue)
  }
  
}
