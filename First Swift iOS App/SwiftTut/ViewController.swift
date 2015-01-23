//
//  ViewController.swift
//  SwiftTut
//
//  Created by George Lo on 9/26/14.
//  Copyright (c) 2014 Purdue iOS Dev Club. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let label: UILabel = UILabel(frame: CGRectMake(10, 50, 300, 50))
        label.text = "Purdue"
        self.view.addSubview(label)
        
        let slider: UISlider = UISlider(frame: CGRectMake(10, 80, 200, 50))
        slider.value = 0.5
        //slider.addTarget(self, action: "sliderChanged", forControlEvents: UIControlEvents.ValueChanged)
        self.view.addSubview(slider)
        
        let button: UIButton = UIButton.buttonWithType(UIButtonType.System) as UIButton
        button.frame = CGRectMake(100, 20, 50, 50)
        button.setTitle("Click", forState: UIControlState.Normal)
        button.addTarget(self, action: "buttonClicked", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(button)
    }
    
    func buttonClicked() {
        let viewController: PopupController = PopupController()
        self.presentViewController(viewController, animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

