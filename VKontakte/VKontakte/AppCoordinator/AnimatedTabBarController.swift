//
//  AnimatedTabBarController.swift
//  VKontakte
//
//  Created by Valery Shel on 07.02.2021.

import UIKit

class AnimatedTabBarController: UITabBarController {
  
  weak var coordinator: TabCoordinator?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    delegate = self
  }
}

extension AnimatedTabBarController: UITabBarControllerDelegate {
  
  override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {}

  func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {}
  
  func tabBarController(_ tabBarController: UITabBarController, animationControllerForTransitionFrom fromVC: UIViewController, to toVC: UIViewController) -> UIViewControllerAnimatedTransitioning? {
    return TabBarAnimatedTransitioning()
  }
}


final class TabBarAnimatedTransitioning: NSObject, UIViewControllerAnimatedTransitioning {
  
  func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
    guard let destination = transitionContext.view(forKey: UITransitionContextViewKey.to) else { return }
    
    destination.alpha = 0.0
    destination.transform = .init(scaleX: 0.5, y: 0.5)
    transitionContext.containerView.addSubview(destination)
    
    UIView.animate(withDuration: transitionDuration(using: transitionContext), animations: {
      destination.alpha = 1.0
      destination.transform = .identity
    }, completion: { transitionContext.completeTransition($0) })
  }
  
  
  func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
    return 0.25
  }
}



