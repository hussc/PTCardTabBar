//
//  ViewController.swift
//  PTCardTabBar
//
//  Created by hussc on 09/03/2019.
//  Copyright (c) 2019 hussc. All rights reserved.
//

import UIKit
import PTCardTabBar

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func storyboardButtonTapped(_ sender: Any) {
        let tabBarController = self.storyboard?.instantiateViewController(withIdentifier: "CardTabBarController") as! PTCardTabBarController
        present(tabBarController, animated: true, completion: nil)
    }
    

    @IBAction func codeButtonTapped(_ sender: Any) {
        let tabBarController = PTTabBarViewController()
        present(tabBarController, animated: true, completion: nil)
    }
}

