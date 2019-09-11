//
//  PTTabBarViewController.swift
//  PTCardTabBar_Example
//
//  Created by Selwan IOS on 9/11/19.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit
import PTCardTabBar

class PTTabBarViewController: PTCardTabBarController {

    override func viewDidLoad() {
        let vc1 = LabelViewController(title: "Home")
        let vc2 =  LabelViewController(title: "Calendar")
        let vc3 = LabelViewController(title: "More")
        
        vc1.tabBarItem = UITabBarItem(title: "", image: UIImage(named: "home"), tag: 1)
        vc2.tabBarItem = UITabBarItem(title: "", image: UIImage(named: "calendar"), tag: 2)
        vc3.tabBarItem = UITabBarItem(title: "", image: UIImage(named: "more"), tag: 3)
        
        self.viewControllers = [vc1, vc2, vc3]
        
        super.viewDidLoad()
    }
}
