//
//  PopupController.swift
//  SwiftTut
//
//  Created by George Lo on 9/26/14.
//  Copyright (c) 2014 Purdue iOS Dev Club. All rights reserved.
//

import UIKit

class PopupController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let button: UIButton = UIButton.buttonWithType(UIButtonType.System) as UIButton
        button.frame = CGRectMake(20, 20, 300, 100)
        button.setTitle("Close", forState: UIControlState.Normal)
        button.addTarget(self, action: "buttonClicked", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(button)
        
        self.view.backgroundColor = UIColor.blueColor()
        // Do any additional setup after loading the view.
    }
    
    func buttonClicked() {
        self.dismissViewControllerAnimated(true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
