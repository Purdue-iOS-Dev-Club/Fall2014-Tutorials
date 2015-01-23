//
//  ViewController.swift
//  Storage
//
//  Created by George Lo on 9/30/14.
//  Copyright (c) 2014 Purdue iOS Dev Club. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func save(sender: AnyObject) {
        let str: String = textField.text
        NSUserDefaults.standardUserDefaults().setObject(str, forKey: "Settings")
        NSUserDefaults.standardUserDefaults().synchronize()
        // Key: Value
        // Settings: _______<str>
    }
    
    @IBAction func retrieve(sender: AnyObject) {
        let str: String = NSUserDefaults.standardUserDefaults().objectForKey("Settings") as String
        label.text = str
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

