//
//  TodayViewController.swift
//  UPDATELABEL
//
//  Created by George Lo on 12/2/14.
//  Copyright (c) 2014 Purdue iOS Club. All rights reserved.
//

import UIKit
import NotificationCenter

class TodayViewController: UIViewController, NCWidgetProviding {
    
    let ball: UIView = UIView(frame: CGRectMake(0, 0, 20, 20))
        
    @IBOutlet weak var _timeLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: "updateLabel", userInfo: nil, repeats: true)
        
        
        ball.backgroundColor = UIColor.whiteColor()
        ball.layer.cornerRadius = 10
        self.view.addSubview(ball)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func widgetPerformUpdateWithCompletionHandler(completionHandler: ((NCUpdateResult) -> Void)!) {
        // Perform any setup necessary in order to update the view.
        
        UIView.animateWithDuration(2, animations: {
            self.ball.frame = CGRectMake(0, self.ball.frame.origin.y + 20, 20, 20)
        })
        
        
        completionHandler(NCUpdateResult.NewData)
    }
    
    func updateLabel() {
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "hh:mm:ss"
        let dateString = dateFormatter.stringFromDate(NSDate())
        _timeLabel.text = dateString
    }
    
}
