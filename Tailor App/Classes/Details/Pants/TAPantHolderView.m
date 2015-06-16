//
//  TAPantHolderView.m
//  Tailor App
//
//  Created by Padmam on 12/06/15.
//  Copyright (c) 2015 csg. All rights reserved.
//

#import "TAPantHolderView.h"

@implementation TAPantHolderView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)hideAllViews
{
    if(self.linenPantView)
        [self.linenPantView removeFromSuperview];
    if(self.chinosPantView)
        [self.chinosPantView removeFromSuperview];
    
}

- (void)prepareUI:(NSInteger)aTag andDetails:(NSArray*)details
{
    [self hideAllViews];
    
    switch (aTag) {
        case 0:
        {
            NSArray *nibArray = [[NSBundle mainBundle] loadNibNamed:@"TALinenPantView" owner:self options:nil];
            self.linenPantView = (TALinenPantView*)[nibArray objectAtIndex:0];
            self.linenPantView.frame = CGRectMake(0, 0, self.linenPantView.frame.size.width, self.linenPantView.frame.size.height);
            [self addSubview:self.linenPantView];
            
        }
            break;
        case 1:
        {
            NSArray *nibArray = [[NSBundle mainBundle] loadNibNamed:@"TAChinosPantView" owner:self options:nil];
            self.chinosPantView = (TAChinosPantView*)[nibArray objectAtIndex:0];
            self.chinosPantView.frame = CGRectMake(0, 0, self.chinosPantView.frame.size.width, self.chinosPantView.frame.size.height);
            [self addSubview:self.chinosPantView];
            
        }
            break;
            
        default:
            break;
    }
}

@end
