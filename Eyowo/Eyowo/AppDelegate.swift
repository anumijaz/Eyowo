//
//  AppDelegate.swift
//  Eyowo
//
//  Created by Anum Ijaz on 20/07/2021.
//  Copyright © 2021 Anum Ijaz. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
          updateRootViewController()
       
        // Override point for customization after application launch.
        UINavigationBar.appearance().tintColor = UIColor.brown;
        let navigationFont=UIFont(name: "Arial-BoldItalicMT", size: 18)!
        let navigationAttribute = [NSAttributedString.Key.font:navigationFont]
        UINavigationBar.appearance().titleTextAttributes = navigationAttribute
        return true
    }
    
    func updateRootViewController() {
        window = UIWindow(frame: UIScreen.main.bounds);
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let current_status = UserDefaults.standard.bool(forKey: "Login");
        var rootVC:UIViewController?
        print(current_status);
        if(current_status){
            rootVC = storyboard.instantiateViewController(withIdentifier: "FruitListViewController")
            }
        else{
            rootVC = storyboard.instantiateViewController(withIdentifier: "LoginController")
            }
        let navigationController = UINavigationController.init(rootViewController: rootVC!);
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
    }



}

