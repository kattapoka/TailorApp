//
//  TA3PieceSuitView.m
//  Tailor App
//
//  Created by Padmam on 12/06/15.
//  Copyright (c) 2015 csg. All rights reserved.
//

#import "TA3PieceSuitView.h"
#import "TAPopListTableViewController.h"

@implementation TA3PieceSuitView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)initializeWithOptions:(NSMutableDictionary*)dict
{
    self.suitDetailsDict = [NSMutableDictionary dictionaryWithObjectsAndKeys:[NSNumber numberWithInteger:2],@"Jacket_Type",[NSNumber numberWithInteger:1],@"Jacket_Style", [NSNumber numberWithInteger:2],@"Jacket_Fit", [NSNumber numberWithInteger:1],@"Jacket_Lapels", [NSNumber numberWithInteger:2],@"Jacket_NumButtons", [NSNumber numberWithInteger:1],@"Jacket_BreastPocket", [NSNumber numberWithInteger:2],@"Jacket_HipPocket", [NSNumber numberWithInteger:2],@"Jacket_BackStyle", [NSNumber numberWithInteger:3],@"Jacket_Sleeves", [NSNumber numberWithInteger:2],@"Jacket_ButtonHoles",
                            [NSNumber numberWithInteger:1],@"Vest_Style",
                            [NSNumber numberWithInteger:5],@"Vest_NumButton",
                            [NSNumber numberWithInteger:2],@"Vest_Edge",
                            [NSNumber numberWithInteger:1],@"Vest_BreastPocket",
                            [NSNumber numberWithInteger:2],@"Vest_FrontPocket",
                            [NSNumber numberWithInteger:2],@"Pant_Fit",
                            [NSNumber numberWithInteger:2],@"Pant_Pleats",
                            [NSNumber numberWithInteger:2],@"Pant_PleatsFastening",
                            [NSNumber numberWithInteger:2],@"Pant_SidePocket",
                            [NSNumber numberWithInteger:2],@"Pant_BackPocket",
                            [NSNumber numberWithInteger:2],@"Pant_Cuffs",
                            nil];
    
    
    
    
    
    
    
}
- (IBAction)onButtonSelection:(id)sender
{
    if([self.popoverController isPopoverVisible])
    {
        [self.popoverController dismissPopoverAnimated:YES];
        return;
    }
    
    NSMutableArray *valueArray = [[NSMutableArray alloc]initWithObjects:@"1", @"2",@"3", @"4", nil];
    NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithObjectsAndKeys:valueArray,@"Values",[NSNumber numberWithInteger:1],@"ItemTag", nil];
    
    TAPopListTableViewController *viewController = [[TAPopListTableViewController alloc] initWithNibName:@"TAPopListTableViewController" andDetails:dict bundle:nil];
    self.popoverController.contentViewController.preferredContentSize = CGSizeMake(125, 50);
    self.popoverController = [[UIPopoverController alloc] initWithContentViewController:viewController];
    [self.popoverController setPopoverContentSize:viewController.view.frame.size];
    
    self.popoverController.backgroundColor = [UIColor colorWithRed:171/255 green:174/255 blue:181/255 alpha:1];
    
    UIButton *button = (UIButton *)sender;
    [self.popoverController presentPopoverFromRect:button.bounds
                                            inView:button
                          permittedArrowDirections:UIPopoverArrowDirectionAny
                                          animated:YES];
}


@end
