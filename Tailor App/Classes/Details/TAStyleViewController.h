//
//  TAStyleViewController.h
//  Tailor App
//
//  Created by Padmam on 10/06/15.
//  Copyright (c) 2015 csg. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TA3PieceSuitView.h"
#import "TASuitHolderView.h"
#import "TAShirtHolderView.h"
#import "TABlazerHolderView.h"
#import "TAPantHolderView.h"

@interface TAStyleViewController : UIViewController
{
    
}
@property (strong, nonatomic) NSMutableArray *detailsListArray;
@property (strong, nonatomic) NSString *titleLabel;
@property (assign, nonatomic) NSInteger selectedIndex;
@property (assign, nonatomic) NSInteger selectedSubTypeIndex;

@property (strong, nonatomic) TASuitHolderView *suitView;
@property (strong, nonatomic) TAShirtHolderView *shirtView;
@property (strong, nonatomic) TABlazerHolderView *blazerView;
@property (strong, nonatomic) TAPantHolderView *pantView;

@end
