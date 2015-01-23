//
//  ViewController.h
//  speed
//
//  Created by Eric Lees on 10/28/14.
//  Copyright (c) 2014 Eric Lees. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>
#import "JFWeatherData.h"
#import "JFWeatherManager.h"
#import "DataModels.h"

@interface ViewController : UIViewController <CLLocationManagerDelegate,MKMapViewDelegate, UITableViewDelegate>{
    
    JFWeatherManager *weatherManager;
    
}
@property (strong, nonatomic) CLLocationManager *locationManager;
@property (strong, nonatomic) CLLocation *location;
@property (weak, nonatomic) IBOutlet UILabel *speed;
@property (weak, nonatomic) IBOutlet UILabel *condition;
@property (weak, nonatomic) IBOutlet UILabel *temp;


@end

