//
//  ViewController.swift
//  iCloudKeyValue
//
//  Created by George Lo on 12/5/14.
//  Copyright (c) 2014 Purdue iOS Club. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let keyStore = NSUbiquitousKeyValueStore()
        keyStore.setObject("admin", forKey: "Username")
        keyStore.setObject("isadflhas", forKey: "Password")
        keyStore.synchronize()
        
        let str: NSString = keyStore.objectForKey("Username") as NSString!
        println(str)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

