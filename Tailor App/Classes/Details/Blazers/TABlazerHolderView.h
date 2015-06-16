//
//  TABlazerHolderView.h
//  Tailor App
//
//  Created by Padmam on 12/06/15.
//  Copyright (c) 2015 csg. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TACorduroyBlazerView.h"
#import "TACottonBlazerView.h"
#import "TALinenBlazerView.h"
#import "TATweedBlazerView.h"
#import "TAVelvetBlazerView.h"

@interface TABlazerHolderView : UIView

@property (nonatomic, strong) TACorduroyBlazerView *blazerCorduroyView;
@property (nonatomic, strong) TACottonBlazerView *blazerCottonView;
@property (nonatomic, strong) TALinenBlazerView *blazerLinenView;
@property (nonatomic, strong) TATweedBlazerView *blazerTweedView;
@property (nonatomic, strong) TAVelvetBlazerView *blazerVelvetView;

- (void)prepareUI:(NSInteger)aTag andDetails:(NSArray*)details;

@end
