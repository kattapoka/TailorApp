//
//  TASubItemCollectionViewCell.m
//  Tailor App
//
//  Created by Padmam on 11/06/15.
//  Copyright (c) 2015 csg. All rights reserved.
//

#import "TASubItemCollectionViewCell.h"

@implementation TASubItemCollectionViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        NSArray *arrayOfViews = [[NSBundle mainBundle] loadNibNamed:@"TASubItemCollectionViewCell" owner:self options:nil];
        
        if ([arrayOfViews count] < 1) {
            return nil;
        }
        
        if (![[arrayOfViews objectAtIndex:0] isKindOfClass:[UICollectionViewCell class]]) {
            return nil;
        }
        
        self = [arrayOfViews objectAtIndex:0];
        
        self.bgImgView.backgroundColor = [UIColor colorWithRed:171/255.0 green:175/255.0 blue:181/255.0 alpha:1];
        CALayer *l = [self.bgImgView layer];
        [l setMasksToBounds:YES];
        [l setCornerRadius:5.0];
        [l setBorderWidth:0.5];
        [l setBorderColor:[[UIColor colorWithRed:171/255.0 green:175/255.0 blue:181/255.0 alpha:1] CGColor]];

    }
    return self;
}



@end
