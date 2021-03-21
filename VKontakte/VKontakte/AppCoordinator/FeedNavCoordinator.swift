//
//  FeedFlowCoordinator.swift
//  VKontakte
//
//  Created by Valery Shel on 04.02.2021.
//

import UIKit

class FeedNavCoordinator: NavCoordinator {
    
    var navigationController: UINavigationController
  
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
  
    func start() {
        let vc = FeedViewController()
        vc.coordinator = self
        push(vc: vc, animated: false)
    }
  
    func showPost() {
        let vc = PostViewController()
        vc.coordinator = self
        push(vc: vc, animated: true)
    }
}
