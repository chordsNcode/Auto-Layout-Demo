//
//  AppDelegate.swift
//  AutoLayoutExample
//
//  Created by Matt Dias on 12/11/16.
//  Copyright © 2016 Matt Dias. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    fileprivate var navController: UINavigationController?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        
        let initialViewController = ViewController()
        navController = UINavigationController(rootViewController: initialViewController)
        
        setupNavBar()
        
        window?.rootViewController = navController
        window?.makeKeyAndVisible()
        
        return true
    }

    private func setupNavBar() {
        
        guard let navBar = self.navController else {
            print("somehow you have no navbar...")
            return
        }
        
        navBar.navigationBar.barTintColor = UIColor(red: 53/255, green: 53/255, blue: 53/255, alpha: 1.0)
        navBar.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]
    }

}

