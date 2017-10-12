//
//  LoginViewModel.swift
//  xyrality-test
//
//  Created by Kizzu on 12.10.17.
//  Copyright © 2017 ryasnoy. All rights reserved.
//

import RxSwift

struct LoginViewModel {
  
  var email = Variable<String>("")
  var password = Variable<String>("")
  
  let isValid: Observable<Bool>
  
  let color: Observable<Color>
  
  init() {
    isValid = Observable.combineLatest(email.asObservable(), password.asObservable()) { (email, password) in
      return Validator.isValidEmail(emailString: email) && Validator.isValidPassword(passwordString: password)
    }
    color = isValid.map({ isValid in
      return isValid ? .green : .darkGray
    })
  }
  
  func authorize() {
    guard let delegate = UIApplication.shared.delegate as? AppDelegate else {return}
    delegate.window?.rootViewController = Loader.controller(from: .WorldList, controller: .WorldListNavController)    
  }

}


