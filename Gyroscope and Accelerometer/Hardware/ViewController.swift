//
//  ViewController.swift
//  Hardware
//
//  Created by George Lo on 11/4/14.
//  Copyright (c) 2014 Purdue iOS Club. All rights reserved.
//

import UIKit
import CoreMotion

class ViewController: UIViewController {
    
    var motionManager: CMMotionManager = CMMotionManager()
    let layer = CALayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let queue = NSOperationQueue()
        /*motionManager.startGyroUpdatesToQueue(queue) {
            (data, error) in
            let x = data.rotationRate.x
            let y = data.rotationRate.y
            let z = data.rotationRate.z
            NSLog("X: %f", x)
            NSLog("Y: %f", y)
            NSLog("Z: %f", z)
        }*/
        
        let image = UIImage(named: "SteeringWheel.png")
        
        layer.frame = CGRectMake(150, 50, 300, 300)
        layer.contents = image?.CGImage
        self.view.layer.addSublayer(layer)
        
        motionManager.accelerometerUpdateInterval = 0.15
        motionManager.startAccelerometerUpdatesToQueue(queue) {
            (data, error) in
            self.updateSteeringWheel(data)
        }
    }
    
    func updateSteeringWheel(data: CMAccelerometerData) {
        let radians = -1 * data.acceleration.y * 90.0 / 180.0 * M_PI
        dispatch_async(dispatch_get_main_queue(), {
            let rotation = CGAffineTransformMakeRotation(CGFloat(radians))
            self.layer.setAffineTransform(rotation)
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

