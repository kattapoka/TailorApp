//
//  TAHomeViewController.m
//  Tailor App
//
//  Created by Padmam on 09/06/15.
//  Copyright (c) 2015 csg. All rights reserved.
//

#import "TAHomeViewController.h"
#import "TAAppController.h"
#import "TACommon.h"

@interface TAHomeViewController ()

@end

@implementation TAHomeViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)loadDetailedView
{
    //[[TAAppController sharedAppController] doViewTransitionAnimation];
    self.styleViewController = [[TAStyleViewController alloc] initWithNibName:@"TAStyleViewController" bundle:nil];
    
}

- (IBAction)onSuitBtnPressed:(id)sender
{
    [self loadDetailedView];
    self.styleViewController.selectedIndex = 1;
    [[TAAppController sharedAppController].applicationWindow addSubview:self.styleViewController.view];
}

- (IBAction)onShirtBtnPressed:(id)sender
{
    [self loadDetailedView];
    self.styleViewController.selectedIndex = 2;
    [[TAAppController sharedAppController].applicationWindow addSubview:self.styleViewController.view];
}

- (IBAction)onBlazerBtnPressed:(id)sender
{
 //   [self loadDetailedView];
 //   self.styleViewController.selectedIndex = 3;
  //  [[TAAppController sharedAppController].applicationWindow addSubview:self.styleViewController.view];
}

- (IBAction)onPantsBtnPressed:(id)sender
{
  //  [self loadDetailedView];
  //  self.styleViewController.selectedIndex = 4;
  //  [[TAAppController sharedAppController].applicationWindow addSubview:self.styleViewController.view];
}

- (IBAction)onWaistcoatBtnPressed:(id)sender
{
  //  [self loadDetailedView];
  //  self.styleViewController.selectedIndex = 5;
  //  [[TAAppController sharedAppController].applicationWindow addSubview:self.styleViewController.view];
}

- (IBAction)onPoloShirtsBtnPressed:(id)sender
{
  //  [self loadDetailedView];
  //  self.styleViewController.selectedIndex = 6;
  //  [[TAAppController sharedAppController].applicationWindow addSubview:self.styleViewController.view];
}

- (IBAction)onTrenchCoatBtnPressed:(id)sender
{
  //  [self loadDetailedView];
  //  self.styleViewController.selectedIndex = 7;
  //  [[TAAppController sharedAppController].applicationWindow addSubview:self.styleViewController.view];
}

- (IBAction)onOuterwearBtnPressed:(id)sender
{
  //  [self loadDetailedView];
  //  self.styleViewController.selectedIndex = 8;
  //  [[TAAppController sharedAppController].applicationWindow addSubview:self.styleViewController.view];
}

/*- (void) formatText:(BOOL)isSelected
{
    UIFont *font = [UIFont systemFontOfSize:17.0];
    UIFont *secondFont = [UIFont systemFontOfSize:17.0];
    
    NSMutableDictionary *firstAttributes;
    NSMutableDictionary *secondAttributes;
    
    NSDictionary *firstAttributeFont = @{NSFontAttributeName:font};
    NSDictionary *secondAttributeFont = @{NSFontAttributeName:secondFont};
    
    [firstAttributes addEntriesFromDictionary:firstAttributeFont];
    [secondAttributes addEntriesFromDictionary:secondAttributeFont];
    
    if (!isSelected)
    {
        [firstAttributes addEntriesFromDictionary:@{NSForegroundColorAttributeName:[UIColor whiteColor]}];
        [secondAttributes addEntriesFromDictionary:@{NSForegroundColorAttributeName:[UIColor lightGrayColor]}];
        
    }
    else{
        [firstAttributes addEntriesFromDictionary:@{NSForegroundColorAttributeName:BLUE_COLOR}];
        [secondAttributes addEntriesFromDictionary:@{NSForegroundColorAttributeName:[UIColor redColor]}];
    }
    
    
    NSString* completeString = [NSString stringWithFormat:@"%@ %@",self.firstAttributeText,self.secondAttributeText];
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc]     initWithString:completeString];
    [attributedString setAttributes:firstAttributes range:[completeString rangeOfString:self.firstAttributeText]];
    [attributedString setAttributes:secondAttributes range:[completeString rangeOfString:self.secondAttributeText]];
    self.headerLabel.attributedText = attributedString;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    
    [super setSelected:selected animated:animated];
    [self formatText:selected];
    // Configure the view for the selected state
    
}

-(void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
    
    [super setHighlighted:highlighted animated:animated];
    [self formatText:highlighted];
    
}*/


@end
