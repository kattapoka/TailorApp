//
//  TASuitHolderView.m
//  Tailor App
//
//  Created by Padmam on 12/06/15.
//  Copyright (c) 2015 csg. All rights reserved.
//

#import "TASuitHolderView.h"


@implementation TASuitHolderView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)hideAllViews
{
    if(self.suit3PieceView)
    {
        [self.suit3PieceView removeFromSuperview];
        self.suit3PieceView = nil;
    }
    if(self.suitTuxedoView)
    {
        [self.suitTuxedoView removeFromSuperview];
        self.suitTuxedoView = nil;
    }
    if(self.suitTailCoatView)
    {
        [self.suitTailCoatView removeFromSuperview];
        self.suitTailCoatView = nil;
    }
    if(self.suitMorningCoatView)
    {
        [self.suitMorningCoatView removeFromSuperview];
        self.suitMorningCoatView = nil;
    }
    if(self.suitFrockCoatView)
    {
        [self.suitFrockCoatView removeFromSuperview];
        self.suitFrockCoatView = nil;
    }
    if(self.suitFabricView)
    {
        [self.suitFabricView removeFromSuperview];
        self.suitFabricView = nil;
    }
    
}

- (void)prepareUI:(NSInteger)aTag andDetails:(NSArray*)details
{
    [self hideAllViews];
    
    self.selectedTypeIndex = aTag;
    
    switch (aTag) {
        case 0:
        {
            NSArray *nibArray = [[NSBundle mainBundle] loadNibNamed:@"TA3PieceSuitView" owner:self options:nil];
            self.suit3PieceView = (TA3PieceSuitView*)[nibArray objectAtIndex:0];
            self.suit3PieceView.frame = CGRectMake(0, 0, self.suit3PieceView.frame.size.width, self.suit3PieceView.frame.size.height);
            
            [self.scrollView setContentSize:CGSizeMake(self.suit3PieceView.frame.size.width, self.suit3PieceView.frame.size.height)];
            [self.scrollView addSubview:self.suit3PieceView];
        }
            break;
        case 1:
        {
            NSArray *nibArray = [[NSBundle mainBundle] loadNibNamed:@"TATuxedoSuitView" owner:self options:nil];
            self.suitTuxedoView = (TATuxedoSuitView*)[nibArray objectAtIndex:0];
            self.suitTuxedoView.frame = CGRectMake(0, 0, self.suitTuxedoView.frame.size.width, self.suitTuxedoView.frame.size.height);
            
            [self.scrollView setContentSize:CGSizeMake(self.suitTuxedoView.frame.size.width, self.suitTuxedoView.frame.size.height)];
            [self.scrollView addSubview:self.suitTuxedoView];
            
        }
            break;
            
        case 2:
        {
            NSArray *nibArray = [[NSBundle mainBundle] loadNibNamed:@"TATailCoatSuitView" owner:self options:nil];
            self.suitTailCoatView = (TATailCoatSuitView*)[nibArray objectAtIndex:0];
            self.suitTailCoatView.frame = CGRectMake(0, 0, self.suitTailCoatView.frame.size.width, self.suitTailCoatView.frame.size.height);
            
            [self.scrollView setContentSize:CGSizeMake(self.suitTailCoatView.frame.size.width, self.suitTailCoatView.frame.size.height)];
            [self.scrollView addSubview:self.suitTailCoatView];

            
        }
            break;
        case 3:
        {
            NSArray *nibArray = [[NSBundle mainBundle] loadNibNamed:@"TAMorningCoatSuitView" owner:self options:nil];
            self.suitMorningCoatView = (TAMorningCoatSuitView*)[nibArray objectAtIndex:0];
            self.suitMorningCoatView.frame = CGRectMake(0, 0, self.suitMorningCoatView.frame.size.width, self.suitMorningCoatView.frame.size.height);
            
            [self.scrollView setContentSize:CGSizeMake(self.suitMorningCoatView.frame.size.width, self.suitMorningCoatView.frame.size.height)];
            [self.scrollView addSubview:self.suitMorningCoatView];
            
        }
            break;
        case 4:
        {
            NSArray *nibArray = [[NSBundle mainBundle] loadNibNamed:@"TAFrockCoatSuitView" owner:self options:nil];
            self.suitFrockCoatView = (TAFrockCoatSuitView*)[nibArray objectAtIndex:0];
            self.suitFrockCoatView.frame = CGRectMake(0, 0, self.suitFrockCoatView.frame.size.width, self.suitFrockCoatView.frame.size.height);
            
            [self.scrollView setContentSize:CGSizeMake(self.suitFrockCoatView.frame.size.width, self.suitFrockCoatView.frame.size.height)];
            [self.scrollView addSubview:self.suitFrockCoatView];
            
        }
            break;
            
        default:
            break;
    }
}

- (IBAction)onStyleBtnPressed:(id)sender
{
    switch (self.selectedTypeIndex)
    {
        case 0:
        {
            if(self.suit3PieceView)
            {
                
            }
            else
            {
                [self hideAllViews];
                NSArray *nibArray = [[NSBundle mainBundle] loadNibNamed:@"TA3PieceSuitView" owner:self options:nil];
                self.suit3PieceView = (TA3PieceSuitView*)[nibArray objectAtIndex:0];
                self.suit3PieceView.frame = CGRectMake(0, 0, self.suit3PieceView.frame.size.width, self.suit3PieceView.frame.size.height);
                
                [self.scrollView setContentSize:CGSizeMake(self.suit3PieceView.frame.size.width, self.suit3PieceView.frame.size.height)];
                [self.scrollView addSubview:self.suit3PieceView];
            }
        }
            break;
            
        default:
            break;
    }

}

- (IBAction)onFabricBtnPressed:(id)sender
{
    switch (self.selectedTypeIndex)
    {
        case 0:
        {
            if(self.suitFabricView)
            {
                
            }
            else
            {
                [self hideAllViews];
                NSArray *nibArray = [[NSBundle mainBundle] loadNibNamed:@"TASuitFabricView" owner:self options:nil];
                self.suitFabricView = (TASuitFabricView*)[nibArray objectAtIndex:0];
                self.suitFabricView.frame = CGRectMake(0, 0, self.suitFabricView.frame.size.width, self.suitFabricView.frame.size.height);
                [self.suitFabricView launchViewWithDetails];
                
                [self.scrollView setContentSize:CGSizeMake(self.suitFabricView.frame.size.width, self.suitFabricView.frame.size.height)];
                [self.scrollView addSubview:self.suitFabricView];
            }
        }
            break;
            
        default:
            break;
    }
}

- (IBAction)onDetailsBtnPressed:(id)sender
{
    //To be done
}

@end
