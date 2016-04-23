//
//  AppDelegate.swift
//  Checklists
//
//  Created by Alejandro Gomez Mutis on 4/8/16.
//  Copyright © 2016 Alejandro Gomez Mutis. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    let dataModel = DataModel()

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        let navigationController = window!.rootViewController as! UINavigationController
        let controller = navigationController.viewControllers[0] as! AllListsViewController
        controller.dataModel = dataModel

        return true
    }

    func applicationDidEnterBackground(application: UIApplication) {
        saveData()
    }

    func applicationWillTerminate(application: UIApplication) {
        saveData()
    }
    
    func application(application: UIApplication, didReceiveLocalNotification notification: UILocalNotification) {
        print("didReceiveLocalNotification \(notification)")
    }

    func saveData() {
        dataModel.saveChecklists()
    }
    
}

