//
//  AppDelegate.h
//  Tailor App
//
//  Created by Padmam on 09/06/15.
//  Copyright (c) 2015 csg. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TAAppController;
@interface AppDelegate : UIResponder <UIApplicationDelegate>
{
    TAAppController                *appController;
}
@property (strong, nonatomic) UIWindow *window;
@property (readonly) TAAppController *appController;

- (TAAppController *)appController;
//- (void)saveContext;
//


@end

