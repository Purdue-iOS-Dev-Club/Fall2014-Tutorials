//
//  ViewController.swift
//  SystemServices
//
//  Created by George Lo on 11/4/14.
//  Copyright (c) 2014 Purdue iOS Club. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let button = UIButton.buttonWithType(UIButtonType.System) as UIButton
        button.frame = CGRectMake(0, 20, 100, 100)
        button.setTitle("Safari", forState: UIControlState.Normal)
        button.addTarget(self, action: "showSafari", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(button)
        
        let button2 = UIButton.buttonWithType(UIButtonType.System) as UIButton
        button2.frame = CGRectMake(0, 120, 100, 100)
        button2.setTitle("Phone", forState: UIControlState.Normal)
        button2.addTarget(self, action: "showPhone", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(button2)
    }
    
    func showSafari() {
        let url: NSURL = NSURL(string: "http://www.yahoo.com/")!
        UIApplication.sharedApplication().openURL(url)
    }
    
    func showPhone() {
        let url: NSURL = NSURL(string: "tel://767776786786")!
        UIApplication.sharedApplication().openURL(url)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

