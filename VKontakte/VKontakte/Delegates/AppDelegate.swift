//
//  AppDelegate.swift
//  VKontakte
//
//  Created by Valery Shel on 27.01.2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    var coordinator: MainNavigationTabBarController?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let rootController = AnimatedTabBarController()
        
        coordinator = MainNavigationTabBarController(tabBarController: rootController)
        
        rootController.coordinator = coordinator
        
        coordinator?.start()
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = rootController
        window?.makeKeyAndVisible()
        
        return true
    }
}

