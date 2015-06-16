//
//  TACommon.h
//  Tailor App
//
//  Created by Padmam on 10/06/15.
//  Copyright (c) 2015 csg. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "Constants.h"

@interface TACommon : NSObject


+ (UIImage *)filledImageFrom:(UIImage *)source withColor:(UIColor *)color;
+ (CGFloat)measureHeightOfUILabel:(UILabel *)labelView;
+ (UIImage *)imageWithColor:(UIColor *)color;

@end
