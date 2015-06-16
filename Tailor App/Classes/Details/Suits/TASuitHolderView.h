//
//  TASuitHolderView.h
//  Tailor App
//
//  Created by Padmam on 12/06/15.
//  Copyright (c) 2015 csg. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TA3PieceSuitView.h"
#import "TATuxedoSuitView.h"
#import "TAFrockCoatSuitView.h"
#import "TAMorningCoatSuitView.h"
#import "TATailCoatSuitView.h"
#import "TASuitFabricView.h"

@interface TASuitHolderView : UIView

@property (nonatomic, assign) NSInteger selectedTypeIndex;
@property (nonatomic, strong) TA3PieceSuitView *suit3PieceView;
@property (nonatomic, strong) TATuxedoSuitView *suitTuxedoView;
@property (nonatomic, strong) TAFrockCoatSuitView *suitFrockCoatView;
@property (nonatomic, strong) TAMorningCoatSuitView *suitMorningCoatView;
@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;
@property (nonatomic, strong) TATailCoatSuitView *suitTailCoatView;
@property (nonatomic, strong) TASuitFabricView *suitFabricView;

- (void)prepareUI:(NSInteger)aTag andDetails:(NSArray*)details;
- (IBAction)onStyleBtnPressed:(id)sender;
- (IBAction)onFabricBtnPressed:(id)sender;
- (IBAction)onDetailsBtnPressed:(id)sender;




@end
