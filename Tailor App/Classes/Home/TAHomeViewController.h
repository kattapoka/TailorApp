//
//  TAHomeViewController.h
//  Tailor App
//
//  Created by Padmam on 09/06/15.
//  Copyright (c) 2015 csg. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TAStyleViewController.h"

@interface TAHomeViewController : UIViewController
{
    
}
@property (strong, nonatomic) TAStyleViewController *styleViewController;

- (IBAction)onSuitBtnPressed:(id)sender;
- (IBAction)onShirtBtnPressed:(id)sender;
- (IBAction)onBlazerBtnPressed:(id)sender;
- (IBAction)onPantsBtnPressed:(id)sender;
- (IBAction)onWaistcoatBtnPressed:(id)sender;
- (IBAction)onPoloShirtsBtnPressed:(id)sender;
- (IBAction)onTrenchCoatBtnPressed:(id)sender;
- (IBAction)onOuterwearBtnPressed:(id)sender;


@end
