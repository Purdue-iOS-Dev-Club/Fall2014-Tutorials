//
//  ViewController.swift
//  Flashlight
//
//  Created by George Lo on 11/4/14.
//  Copyright (c) 2014 Purdue iOS Club. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    let devices = AVCaptureDevice.devices()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        for p: AVCaptureDevice in devices as [AVCaptureDevice] {
            if p.hasTorch == true {
                if p.lockForConfiguration(nil) {
                    p.torchMode = AVCaptureTorchMode.On
                }
                p.unlockForConfiguration()
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

