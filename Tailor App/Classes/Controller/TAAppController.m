//
//  TAAppController.m
//  Tailor App
//
//  Created by Padmam on 09/06/15.
//  Copyright (c) 2015 csg. All rights reserved.
//

#import "TAAppController.h"
#import "AppDelegate.h"


@implementation TAAppController


/********************************************************************************************
 @Method Name  : initWithWindow
 @Param        : window
 @Return       : id
 @Description  : The designated initializer
 ********************************************************************************************/
- (id)initWithWindow:(UIWindow *)window
{
    self = [super init];
    if(self)
    {
        self.applicationWindow          = window;
    }
    
    return self;
}


#pragma mark - Private/Public Methods -

/********************************************************************************************
 @Method Name  : loadUI
 @Param        : nil
 @Return       : void
 @Description  : Start the application with Login screen
 ********************************************************************************************/
- (void)loadUI
{
    [self doViewTransitionAnimation];
    [self showHomeScreen];
}

/********************************************************************************************
 @Method Name  : loadApplication
 @Param        : nil
 @Return       : void
 @Description  : loads the application
 ********************************************************************************************/
- (void)loadApplication
{
    [self showHomeScreen];
    //[self performSelector:@selector(loadUI) withObject:nil afterDelay:2.0f];
}

/********************************************************************************************
 @Method Name  : sharedAppController
 @Param        : nil
 @Return       : TAAppController*
 @Description  : appcontroller shared
 ********************************************************************************************/
+ (TAAppController*)sharedAppController
{
    TAAppController *appcontroller;
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    
    appcontroller  = [(AppDelegate*) appDelegate appController];
    
    return appcontroller;
}

/********************************************************************************************
 @Method Name  : doViewTransitionAnimation
 @Param        : nil
 @Return       : void
 @Description  :
 ********************************************************************************************/
- (void)doViewTransitionAnimation
{
    CATransition *animation = [CATransition animation];
    animation.delegate = self;
    animation.duration = 0.75;
    animation.type = kCATransitionFade;
    animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    [[self.applicationWindow layer] addAnimation:animation forKey:ANIMATION_ACTION_DESOLVE];
}


#pragma mark -
#pragma mark screens display methods
#pragma mark -

/********************************************************************************************
 @Method Name  : showSplashScreen
 @Param        : nil
 @Return       : void
 @Description  : Shows the splash screen
 ********************************************************************************************/
//- (void)showSplashScreen
//{
//    [self doViewTransitionAnimation];
//    
////    TASplashViewController *splashVC = [[TASplashViewController alloc]
////                initWithNibName:@"TASplashViewController" bundle:nil];
////    
////    _applicationWindow.rootViewController = splashVC;
//    
//}

- (void)showHomeScreen
{
    [self doViewTransitionAnimation];
    
    TAHomeViewController *homeVC = [[TAHomeViewController alloc]
                                        initWithNibName:@"TAHomeViewController" bundle:nil];
    //UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:homeVC];
    //nav.navigationBarHidden = YES;
    
    _applicationWindow.rootViewController = homeVC;
    
}
@end
