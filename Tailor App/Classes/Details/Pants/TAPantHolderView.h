//
//  TAPantHolderView.h
//  Tailor App
//
//  Created by Padmam on 12/06/15.
//  Copyright (c) 2015 csg. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TALinenPantView.h"
#import "TAChinosPantView.h"

@interface TAPantHolderView : UIView

- (void)prepareUI:(NSInteger)aTag andDetails:(NSArray*)details;

@property (nonatomic, strong) TALinenPantView *linenPantView;
@property (nonatomic, strong) TAChinosPantView *chinosPantView;

@end
