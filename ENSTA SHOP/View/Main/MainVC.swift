//
//  MainVC.swift
//  ENSTA SHOP
//
//  Created by Marwan Mekhamer on 01/02/2026.
//

import UIKit

class MainVC: UIViewController {
    
    
    let searchController = UISearchController(searchResultsController: nil)  // for search contoller

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        RightBarButtonItem()
        LeftBarButtonItem()
        setupSearchController()
        
    }
    
    private func RightBarButtonItem() {
        let bar = UIBarButtonItem(image: UIImage(named: "svgg-2"), style: .done, target: self, action: #selector(RightBar))
        bar.tintColor = .purple
        navigationItem.rightBarButtonItem = bar
    }
    private func LeftBarButtonItem() {
        let bar = UIBarButtonItem(image: UIImage(systemName: "person"), style: .done, target: self, action: #selector(LeftBar))
        bar.title = "Welcome!"
        navigationItem.leftBarButtonItem = bar
    }
    
    @objc func LeftBar() {
        
    }
    
    @objc func RightBar() {
        
    }
    
    func setupSearchController() {
          searchController.searchResultsUpdater = self
          searchController.obscuresBackgroundDuringPresentation = false
          searchController.searchBar.placeholder = "Search items..."
          navigationItem.searchController = searchController
          definesPresentationContext = true
      }

}


// Marwan: - UI Search Controller

extension MainVC: UISearchResultsUpdating {
  func updateSearchResults(for searchController: UISearchController) {
      let searchText = searchController.searchBar.text ?? ""
      
  }
}
