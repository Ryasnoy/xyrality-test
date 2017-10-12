//
//  LoginViewController.swift
//  xyrality-test
//
//  Created by Kizzu on 12.10.17.
//  Copyright © 2017 ryasnoy. All rights reserved.
//

import RxSwift
import RxCocoa

class LoginViewController: UIViewController {
  
  @IBOutlet weak var emailTextField: UITextField!
  @IBOutlet weak var passwordTextField: UITextField!  
  @IBOutlet weak var signInButton: UIButton!
  
  fileprivate let viewModel = LoginViewModel()
  fileprivate let disposeBag = DisposeBag()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setup()
  }
  
  fileprivate func setup() {
    emailTextField.rx.text
      .orEmpty
      .bind(to: viewModel.email)
      .disposed(by: disposeBag)
    
    passwordTextField.rx.text
      .orEmpty
      .bind(to: viewModel.password)
      .disposed(by: disposeBag)
    
    viewModel.isValid
      .bind(to: signInButton.rx.isEnabled)
      .disposed(by: disposeBag)
    
    buttonBindings()
  }
  
  fileprivate func buttonBindings() { 
    viewModel.color
      .bind(onNext: { [unowned self] color in
        self.signInButton.backgroundColor = color.value
      })
      .disposed(by: disposeBag)
    
    signInButton.rx.tap
      .subscribe(onNext: { [unowned self] _ in
        self.viewModel.authorize()
      })
      .disposed(by: disposeBag)
  }
  
  
}

