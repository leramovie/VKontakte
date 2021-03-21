//
//  ProfileFlowCoordinator.swift
//  VKontakte
//
//  Created by Valery Shel on 04.02.2021.
//

import UIKit

class ProfileNavCoordinator: NavCoordinator {
    
  var navigationController: UINavigationController
  
  init(navigationController: UINavigationController) {
    self.navigationController = navigationController
  }
    
//MARK: Страница авторизации
  func start() {
    let vc = LoginViewController()
    vc.coordinator = self
    push(vc: vc, animated: false)
  }
  
//MARK: После авторизации открывает профиль пользователя
  func logIn() {
    let vc = ProfileViewController()
    vc.coordinator = self
    push(vc: vc, animated: true)
  }
  
    
//MARK: Открывает collection view с фото кроликов
  func openPhotoGallery() {
    
    let vc = PhotosViewController()
    vc.coordinator = self
    push(vc: vc, animated: true)
  }
}

