//
//  ViewController.swift
//  NSOperationQueueSample
//
//  Created by George Lo on 11/11/14.
//  Copyright (c) 2014 Purdue iOS Club. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let operationQueue = NSOperationQueue()
        
        // First Operation
        operationQueue.addOperationWithBlock({
            for i in 1...10 {
                print("|\(i)|\n")
            }
        })
        
        // Second Operation
        operationQueue.addOperationWithBlock({
            for i in 11...20 {
                print("|\(i)|\n")
            }
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

