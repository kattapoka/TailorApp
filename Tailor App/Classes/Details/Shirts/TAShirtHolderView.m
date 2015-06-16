//
//  TAShirtHolderView.m
//  Tailor App
//
//  Created by Padmam on 12/06/15.
//  Copyright (c) 2015 csg. All rights reserved.
//

#import "TAShirtHolderView.h"

@implementation TAShirtHolderView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)hideAllViews
{
    if(self.shirtLinenView)
        [self.shirtLinenView removeFromSuperview];
    if(self.shirtShortSleevView)
        [self.shirtShortSleevView removeFromSuperview];
    if(self.shirtTuxedoView)
        [self.shirtTuxedoView removeFromSuperview];
    
}

- (void)prepareUI:(NSInteger)aTag andDetails:(NSArray*)details
{
    [self hideAllViews];
    
    switch (aTag) {
        case 0:
        {
            NSArray *nibArray = [[NSBundle mainBundle] loadNibNamed:@"TALinenShirtView" owner:self options:nil];
            self.shirtLinenView = (TALinenShirtView*)[nibArray objectAtIndex:0];
            self.shirtLinenView.frame = CGRectMake(0, 0, self.shirtLinenView.frame.size.width, self.shirtLinenView.frame.size.height);
            [self addSubview:self.shirtLinenView];
            
        }
            break;
        case 1:
        {
            NSArray *nibArray = [[NSBundle mainBundle] loadNibNamed:@"TAShortSleevShirtView" owner:self options:nil];
            self.shirtShortSleevView = (TAShortSleevShirtView*)[nibArray objectAtIndex:0];
            self.shirtShortSleevView.frame = CGRectMake(0, 0, self.shirtShortSleevView.frame.size.width, self.shirtShortSleevView.frame.size.height);
            [self addSubview:self.shirtShortSleevView];
            
        }
            break;
            
        case 2:
        {
            NSArray *nibArray = [[NSBundle mainBundle] loadNibNamed:@"TATuxedoShirtView" owner:self options:nil];
            self.shirtTuxedoView = (TATuxedoShirtView*)[nibArray objectAtIndex:0];
            self.shirtTuxedoView.frame = CGRectMake(0, 0, self.shirtTuxedoView.frame.size.width, self.shirtTuxedoView.frame.size.height);
            [self addSubview:self.shirtTuxedoView];
            
        }
            break;
            
        default:
            break;
    }
}

@end
