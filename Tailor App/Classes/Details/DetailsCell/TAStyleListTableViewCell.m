//
//  TAStyleListTableViewCell.m
//  Tailor App
//
//  Created by Padmam on 10/06/15.
//  Copyright (c) 2015 csg. All rights reserved.
//

#import "TAStyleListTableViewCell.h"
//#import "TACommon.h"

@implementation TAStyleListTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    //_arrowImgView.image = [TACommon filledImageFrom:_arrowImgView.image withColor:[UIColor colorWithRed:150/255.0 green:0/255.0 blue:0/255.0 alpha:1]];

}

@end
