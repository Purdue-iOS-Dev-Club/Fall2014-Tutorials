//
//  ViewController.swift
//  DispatchExample
//
//  Created by George Lo on 11/11/14.
//  Copyright (c) 2014 Purdue iOS Club. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Priority Queue - First In, Last Out
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), {
            for i in 1...10 {
                print(i)
            }
        })
        
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), {
            for i in 11...20 {
                print(i)
            }
        })
        
        // Serial Queue - First In, First Out
        dispatch_async(dispatch_queue_create("com.PurdueUniversity.PrintOne", nil), {
            for i in 1...10 {
                print(i)
            }
        })
        
        dispatch_async(dispatch_queue_create("com.PurdueUniversity.PrintTwo", nil), {
            for i in 11...20 {
                print(i)
            }
        })
        
        // General Format
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0), {
            // Background Task
            dispatch_async(dispatch_get_main_queue(), {
                // Update UI
            })
        })
        
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0), {
            
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

