//
//  TAShirtHolderView.h
//  Tailor App
//
//  Created by Padmam on 12/06/15.
//  Copyright (c) 2015 csg. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TALinenShirtView.h"
#import "TAShortSleevShirtView.h"
#import "TATuxedoShirtView.h"

@interface TAShirtHolderView : UIView

- (void)prepareUI:(NSInteger)aTag andDetails:(NSArray*)details;

@property (nonatomic, strong) TALinenShirtView *shirtLinenView;
@property (nonatomic, strong) TAShortSleevShirtView *shirtShortSleevView;
@property (nonatomic, strong) TATuxedoShirtView *shirtTuxedoView;

@end
