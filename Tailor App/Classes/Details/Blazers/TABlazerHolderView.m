//
//  TABlazerHolderView.m
//  Tailor App
//
//  Created by Padmam on 12/06/15.
//  Copyright (c) 2015 csg. All rights reserved.
//

#import "TABlazerHolderView.h"

@implementation TABlazerHolderView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/


- (void)hideAllViews
{
    if(self.blazerCorduroyView)
        [self.blazerCorduroyView removeFromSuperview];
    if(self.blazerCottonView)
        [self.blazerCottonView removeFromSuperview];
    if(self.blazerLinenView)
        [self.blazerLinenView removeFromSuperview];
    if(self.blazerTweedView)
        [self.blazerTweedView removeFromSuperview];
    if(self.blazerVelvetView)
        [self.blazerVelvetView removeFromSuperview];
    
}

- (void)prepareUI:(NSInteger)aTag andDetails:(NSArray*)details
{
    [self hideAllViews];
    
    switch (aTag) {
        case 0:
        {
            NSArray *nibArray = [[NSBundle mainBundle] loadNibNamed:@"TACorduroyBlazerView" owner:self options:nil];
            self.blazerCorduroyView = (TACorduroyBlazerView*)[nibArray objectAtIndex:0];
            self.blazerCorduroyView.frame = CGRectMake(0, 0, self.blazerCorduroyView.frame.size.width, self.blazerCorduroyView.frame.size.height);
            [self addSubview:self.blazerCorduroyView];
            
        }
            break;
        case 1:
        {
            NSArray *nibArray = [[NSBundle mainBundle] loadNibNamed:@"TACottonBlazerView" owner:self options:nil];
            self.blazerCottonView = (TACottonBlazerView*)[nibArray objectAtIndex:0];
            self.blazerCottonView.frame = CGRectMake(0, 0, self.blazerCottonView.frame.size.width, self.blazerCottonView.frame.size.height);
            [self addSubview:self.blazerCottonView];
            
        }
            break;
            
        case 2:
        {
            NSArray *nibArray = [[NSBundle mainBundle] loadNibNamed:@"TALinenBlazerView" owner:self options:nil];
            self.blazerLinenView = (TALinenBlazerView*)[nibArray objectAtIndex:0];
            self.blazerLinenView.frame = CGRectMake(0, 0, self.blazerLinenView.frame.size.width, self.blazerLinenView.frame.size.height);
            [self addSubview:self.blazerLinenView];
            
        }
            break;
            
        case 3:
        {
            NSArray *nibArray = [[NSBundle mainBundle] loadNibNamed:@"TATweedBlazerView" owner:self options:nil];
            self.blazerTweedView = (TATweedBlazerView*)[nibArray objectAtIndex:0];
            self.blazerTweedView.frame = CGRectMake(0, 0, self.blazerTweedView.frame.size.width, self.blazerTweedView.frame.size.height);
            [self addSubview:self.blazerTweedView];
            
        }
            break;
            
        case 4:
        {
            NSArray *nibArray = [[NSBundle mainBundle] loadNibNamed:@"TAVelvetBlazerView" owner:self options:nil];
            self.blazerVelvetView = (TAVelvetBlazerView*)[nibArray objectAtIndex:0];
            self.blazerVelvetView.frame = CGRectMake(0, 0, self.blazerVelvetView.frame.size.width, self.blazerVelvetView.frame.size.height);
            [self addSubview:self.blazerVelvetView];
            
        }
            break;

            
        default:
            break;
    }
}

@end
