//
//  Validator.swift
//  xyrality-test
//
//  Created by Kizzu on 12.10.17.
//  Copyright © 2017 ryasnoy. All rights reserved.
//

import Foundation

class Validator {
  
  static func isValidEmail(emailString: String) -> Bool { // return true if entered email is valid
    let regEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
    return NSPredicate(format: "SELF MATCHES %@", regEx).evaluate(with: emailString)
  }
  
  static func isValidPassword(passwordString: String) -> Bool { // return true if entered password is valid
    
    // At least one upper case english letter, (?=.*?[A-Z])
    // At least one lower case english letter, (?=.*?[a-z])
    // At least one digit, (?=.*?[0-9])
    // Password is 6 - 18 characters long
    //
    let regEx = "^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{6,18}$"
    
    return NSPredicate(format: "SELF MATCHES %@", regEx).evaluate(with: passwordString)
  }
  
}
