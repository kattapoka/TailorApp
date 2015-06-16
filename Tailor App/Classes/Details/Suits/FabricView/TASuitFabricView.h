//
//  TASuitFabricView.h
//  Tailor App
//
//  Created by Padmam on 15/06/15.
//  Copyright (c) 2015 csg. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TASuitFabricView : UIView

@property (weak, nonatomic) IBOutlet UICollectionView *subTypeCollectionView;

- (void)launchViewWithDetails;

@end
