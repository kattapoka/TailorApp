//
//  TAStyleViewController.m
//  Tailor App
//
//  Created by Padmam on 10/06/15.
//  Copyright (c) 2015 csg. All rights reserved.
//

#import "TAStyleViewController.h"
#import "TAStyleListTableViewCell.h"
#import "DressDivisionsList.h"
#import "TACoreDataHelper.h"
#import "TACommon.h"
#import "TAAppController.h"
#import "TASubItemCollectionViewCell.h"


@interface TAStyleViewController ()
@property (strong, nonatomic) IBOutlet UITableView *listTableView;
@property (strong, nonatomic) IBOutlet UICollectionView *subTypeCollectionView;

@end

@implementation TAStyleViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.selectedSubTypeIndex = 0;
    [self.subTypeCollectionView registerClass:[TASubItemCollectionViewCell class] forCellWithReuseIdentifier:@"TASubItemCollectionViewCell"];

    self.subTypeCollectionView.bounces = YES;
    [self.subTypeCollectionView setScrollEnabled:YES];
    [self.subTypeCollectionView setShowsHorizontalScrollIndicator:NO];
    [self.subTypeCollectionView setShowsVerticalScrollIndicator:NO];
    
    [self loadScreen];

}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void)hideAllViews
{
    if(self.suitView)
        [self.suitView removeFromSuperview];

}

- (void) loadScreen
{
    [self hideAllViews];
    
    self.detailsListArray = [NSMutableArray arrayWithArray: [[TACoreDataHelper sharedTACoreDataHelper] getDetailsForDressId:[NSNumber numberWithInteger:self.selectedIndex]]];
    [self.listTableView reloadData];
    [self.subTypeCollectionView reloadData];
    
    switch (_selectedIndex)
    {
        case 1:
        {
            NSArray *nibArray = [[NSBundle mainBundle] loadNibNamed:@"TASuitHolderView" owner:self options:nil];
            self.suitView = (TASuitHolderView*)[nibArray objectAtIndex:0];
            self.suitView.frame = CGRectMake(115, 75, self.suitView.frame.size.width, self.suitView.frame.size.height);
            [self.suitView prepareUI:self.selectedSubTypeIndex andDetails:self.detailsListArray];
            [self.view addSubview:self.suitView];
            
        }
            break;
        case 2:
        {
            NSArray *nibArray = [[NSBundle mainBundle] loadNibNamed:@"TAShirtHolderView" owner:self options:nil];
            self.shirtView = (TAShirtHolderView*)[nibArray objectAtIndex:0];
            self.shirtView.frame = CGRectMake(115, 75, self.shirtView.frame.size.width, self.shirtView.frame.size.height);
            [self.shirtView prepareUI:self.selectedSubTypeIndex andDetails:self.detailsListArray];
            [self.view addSubview:self.shirtView];

        }
            break;
        case 3:
        {
            NSArray *nibArray = [[NSBundle mainBundle] loadNibNamed:@"TABlazerHolderView" owner:self options:nil];
            self.blazerView = (TABlazerHolderView*)[nibArray objectAtIndex:0];
            self.blazerView.frame = CGRectMake(115, 75, self.blazerView.frame.size.width, self.blazerView.frame.size.height);
            [self.blazerView prepareUI:self.selectedSubTypeIndex andDetails:self.detailsListArray];
            [self.view addSubview:self.blazerView];

        }
            break;
        case 4:
        {
            NSArray *nibArray = [[NSBundle mainBundle] loadNibNamed:@"TAPantHolderView" owner:self options:nil];
            self.pantView = (TAPantHolderView*)[nibArray objectAtIndex:0];
            self.pantView.frame = CGRectMake(115, 75, self.pantView.frame.size.width, self.pantView.frame.size.height);
            [self.pantView prepareUI:self.selectedSubTypeIndex andDetails:self.detailsListArray];
            [self.view addSubview:self.pantView];
            
        }
            break;
        case 5:
        case 6:
        case 7:
        case 8:
        {
        }
            break;
            
        default:
            break;
    }

}


#pragma mark -
#pragma mark UITableview delegate methods
#pragma mark -

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 9;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 86;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell =  nil;
    
    static NSString *CellIdentifier = @"TAStyleListTableViewCell";
    
    TAStyleListTableViewCell *tableCell = (TAStyleListTableViewCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if(tableCell == nil)
    {
        NSArray *nibArray = [[NSBundle mainBundle] loadNibNamed:@"TAStyleListTableViewCell" owner:self options:nil];
        tableCell = (TAStyleListTableViewCell*)[nibArray objectAtIndex:0];
    }
    
    tableCell.selectionStyle = UITableViewCellSelectionStyleNone;
    tableCell.accessoryType = UITableViewCellAccessoryNone;
    
    if(indexPath.row == self.selectedIndex)
    {
        tableCell.backgroundColor = BLUE_COLOR;
    }
    else
        tableCell.backgroundColor = [UIColor clearColor];
    
    tableCell.pictImgView.hidden = NO;
    tableCell.homeImgView.hidden = YES;
    
  /*  switch (indexPath.row)
    {
        case 0:
        {
            tableCell.pictImgView.hidden = YES;
            tableCell.homeImgView.hidden = NO;
            tableCell.homeImgView.image = [UIImage imageNamed:@"homebutton.png"];
        }
            break;
        case 1:
            tableCell.pictImgView.image = [UIImage imageNamed:@"Sutessidemenu.png"];
            break;
        case 2:
            tableCell.pictImgView.image = [UIImage imageNamed:@"Shrtssidemenu.png"];
            break;
        case 3:
            tableCell.pictImgView.image = [UIImage imageNamed:@"Blazersidemenu.png"];
            break;
        case 4:
            tableCell.pictImgView.image = [UIImage imageNamed:@"Pantssidemenu.png"];
            break;
        case 5:
            tableCell.pictImgView.image = [UIImage imageNamed:@"WastCoatsidemenu.png"];
            break;
        case 6:
            tableCell.pictImgView.image = [UIImage imageNamed:@"Polosidemenu.png"];
            break;
        case 7:
            tableCell.pictImgView.image = [UIImage imageNamed:@"TrenchCoatsidemenu.png"];
            break;
        case 8:
            tableCell.pictImgView.image = [UIImage imageNamed:@"Outerwearsidemenu.png"];
            break;
            
        default:
            break;
    }*/

    cell = tableCell;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(self.selectedIndex != indexPath.row)
    {
        self.selectedSubTypeIndex = 0;
        self.selectedIndex = indexPath.row;
        [self.detailsListArray removeAllObjects];
        
        if(_selectedIndex == 0)
        {
            [self.view removeFromSuperview];
            return;
        }
        
        [self loadScreen];
    }
}

#pragma mark -
#pragma mark UICollectionView Methods
#pragma mark -

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return [self.detailsListArray count];
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
      TASubItemCollectionViewCell *cell = [self.subTypeCollectionView dequeueReusableCellWithReuseIdentifier:@"TASubItemCollectionViewCell" forIndexPath:indexPath];
    
    if(cell == nil)
    {
        NSArray *nibArray = [[NSBundle mainBundle] loadNibNamed:@"TASubItemCollectionViewCell" owner:self options:nil];
        cell = (TASubItemCollectionViewCell*)[nibArray objectAtIndex:0];
    }
    
    if(indexPath.row == self.selectedSubTypeIndex)
    {
        cell.bgImgView.backgroundColor = BLUE_COLOR;
    }
    else
    {
        cell.bgImgView.backgroundColor = [UIColor colorWithRed:171/255 green:174/255 blue:181/255 alpha:1];
    }
    
    DressDivisionsList *details = [self.detailsListArray objectAtIndex:indexPath.row];
    cell.detailNameLbl.text = details.divisionName;
    
    return cell;

}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    if(self.selectedSubTypeIndex != indexPath.row)
    {
        UICollectionViewCell *cell = [collectionView cellForItemAtIndexPath:indexPath];
        cell.contentView.backgroundColor = [UIColor blueColor];
        self.selectedSubTypeIndex = indexPath.row;
        
        [self loadSubTypeDetails];
        [self.subTypeCollectionView reloadData];
    }
}

- (void) loadSubTypeDetails
{
    switch (self.selectedIndex)
    {
        case 1:
        {
            if(!self.suitView)
            {
                NSArray *nibArray = [[NSBundle mainBundle] loadNibNamed:@"TASuitHolderView" owner:self options:nil];
                self.suitView = (TASuitHolderView*)[nibArray objectAtIndex:0];
                self.suitView.frame = CGRectMake(115, 75, self.suitView.frame.size.width, self.suitView.frame.size.height);
                [self.suitView prepareUI:self.selectedSubTypeIndex andDetails:self.detailsListArray];
                [self.view addSubview:self.suitView];
            }
            else
            {
                [self.suitView prepareUI:self.selectedSubTypeIndex andDetails:self.detailsListArray];
            }
        }
            break;
        case 2:
        {
            if(!self.shirtView)
            {
                NSArray *nibArray = [[NSBundle mainBundle] loadNibNamed:@"TAShirtHolderView" owner:self options:nil];
                self.shirtView = (TAShirtHolderView*)[nibArray objectAtIndex:0];
                self.shirtView.frame = CGRectMake(115, 75, self.suitView.frame.size.width, self.suitView.frame.size.height);
                [self.shirtView prepareUI:self.selectedSubTypeIndex andDetails:self.detailsListArray];
                [self.view addSubview:self.shirtView];
            }
            else
            {
                [self.shirtView prepareUI:self.selectedSubTypeIndex andDetails:self.detailsListArray];
            }
        }
            break;
        case 3:
        {
            if(!self.blazerView)
            {
                NSArray *nibArray = [[NSBundle mainBundle] loadNibNamed:@"TABlazerHolderView" owner:self options:nil];
                self.blazerView = (TABlazerHolderView*)[nibArray objectAtIndex:0];
                self.blazerView.frame = CGRectMake(115, 75, self.suitView.frame.size.width, self.suitView.frame.size.height);
                [self.blazerView prepareUI:self.selectedSubTypeIndex andDetails:self.detailsListArray];
                [self.view addSubview:self.blazerView];
            }
            else
            {
                [self.blazerView prepareUI:self.selectedSubTypeIndex andDetails:self.detailsListArray];
            }
        }
            break;
        case 4:
        {
            if(!self.pantView)
            {
                NSArray *nibArray = [[NSBundle mainBundle] loadNibNamed:@"TAPantHolderView" owner:self options:nil];
                self.pantView = (TAPantHolderView*)[nibArray objectAtIndex:0];
                self.pantView.frame = CGRectMake(115, 75, self.pantView.frame.size.width, self.pantView.frame.size.height);
                [self.pantView prepareUI:self.selectedSubTypeIndex andDetails:self.detailsListArray];
                [self.view addSubview:self.pantView];
            }
            else
            {
                [self.pantView prepareUI:self.selectedSubTypeIndex andDetails:self.detailsListArray];
            }
        }
            break;
            

            
        default:
            break;
    }
}


@end
