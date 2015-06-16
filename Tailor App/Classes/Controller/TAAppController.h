//
//  TAAppController.h
//  Tailor App
//
//  Created by Padmam on 09/06/15.
//  Copyright (c) 2015 csg. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <QuartzCore/QuartzCore.h>
#import <UIKit/UIKit.h>
#import "Constants.h"
//#import "TASplashViewController.h"
#import "TAHomeViewController.h"


@interface TAAppController : NSObject
{
    
}
@property (nonatomic, retain) UIWindow                      *applicationWindow;


- (id)initWithWindow:(UIWindow *)window;
+ (TAAppController*)sharedAppController;
- (void)doViewTransitionAnimation;
- (void)loadApplication;


@end
