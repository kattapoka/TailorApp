//
//  TA3PieceSuitView.h
//  Tailor App
//
//  Created by Padmam on 12/06/15.
//  Copyright (c) 2015 csg. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface TA3PieceSuitView : UIView
{
    
    
}
@property (strong, nonatomic) IBOutlet UIButton *numButtons;
@property (nonatomic, strong) UIPopoverController *popoverController;
@property (nonatomic, strong) NSMutableDictionary *suitDetailsDict;








- (void)initializeWithOptions:(NSMutableDictionary*)dict;
- (IBAction)onButtonSelection:(id)sender;


@end
