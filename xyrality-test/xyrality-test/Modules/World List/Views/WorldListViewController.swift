//
//  WorldListViewController.swift
//  xyrality-test
//
//  Created by Kizzu on 12.10.17.
//  Copyright © 2017 ryasnoy. All rights reserved.
//

import RxSwift
import RxCocoa

class WorldListViewController: UIViewController {
  
  @IBOutlet weak var tableView: UITableView!
  
  fileprivate let disposeBag = DisposeBag()
  fileprivate let viewModel = WorldListViewModel()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setup()
  }
  
  fileprivate func setup() {
    tableViewConfiguration()
  }
  
  fileprivate func tableViewConfiguration() {
    tableView.register(cell: .WorldListCell)
    
    viewModel.data
      .asObservable()
      .bind(to: tableView.rx.items(cellIdentifier: Cell.WorldListCell.rawValue, cellType: WorldListCell.self)) { row, element, cell in
        cell.nameLabel.text = element.name
        cell.emailLabel.text = element.email
        cell.usernameLabel.text = element.username
      }
      .disposed(by: disposeBag)
    
  }
  
}
