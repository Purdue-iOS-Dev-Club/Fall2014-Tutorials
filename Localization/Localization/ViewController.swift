//
//  ViewController.swift
//  Localization
//
//  Created by George Lo on 12/7/14.
//  Copyright (c) 2014 Purdue iOS Club. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let label = UILabel(frame: CGRectMake(40, 40, 200, 200))
        label.text = NSLocalizedString("HELLO_STR", comment: "Some Comments")
        self.view.addSubview(label)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

