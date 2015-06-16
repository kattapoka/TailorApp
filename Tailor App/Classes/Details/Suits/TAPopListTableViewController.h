//
//  TAPopListTableViewController.h
//  Tailor App
//
//  Created by Padmam on 15/06/15.
//  Copyright (c) 2015 csg. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol TAPopListTableViewControllerDelegate <NSObject>
@optional
- (void)didSelectedOption:(NSInteger)index withDetails:(NSDictionary*)dict;
@end

@interface TAPopListTableViewController : UITableViewController

@property (assign, nonatomic) id<TAPopListTableViewControllerDelegate> delegate;
@property (nonatomic, strong) NSDictionary *detailsDict;
- (id)initWithNibName:(NSString *)nibNameOrNil andDetails:(NSDictionary*)detailsDict bundle:(NSBundle *)nibBundleOrNil;

@end
