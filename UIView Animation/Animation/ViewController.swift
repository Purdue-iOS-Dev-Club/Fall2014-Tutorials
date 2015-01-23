//
//  ViewController.swift
//  Animation
//
//  Created by George Lo on 11/4/14.
//  Copyright (c) 2014 Purdue iOS Club. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let image = UIImage(named: "SteeringWheel.png")
        let imageView = UIImageView(image: image)
        self.view.addSubview(imageView)
        
        /*UIView.animateWithDuration(2.0, animations: {
            imageView.frame = CGRectMake(0, UIScreen.mainScreen().bounds.height/2, imageView.frame.width, imageView.frame.height)
        })*/
        
        UIView.animateWithDuration(2.0, animations: {
            imageView.frame = CGRectMake(0, 0, imageView.frame.width/2, imageView.frame.width/2)
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

