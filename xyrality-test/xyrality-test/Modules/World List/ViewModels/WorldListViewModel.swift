//
//  WorldListViewModel.swift
//  xyrality-test
//
//  Created by Kizzu on 12.10.17.
//  Copyright © 2017 ryasnoy. All rights reserved.
//

import RxSwift

struct WorldListViewModel {
  
  let data: Observable<[User]>

  init() {
    data = Observable.create({ observer in
      NetworkManager.shared.getUsers({ response in
        observer.onNext(response)
      })
      return Disposables.create()
    })
  }
  
}
