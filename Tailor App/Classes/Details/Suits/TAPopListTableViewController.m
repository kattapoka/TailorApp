//
//  TAPopListTableViewController.m
//  Tailor App
//
//  Created by Padmam on 15/06/15.
//  Copyright (c) 2015 csg. All rights reserved.
//

#import "TAPopListTableViewController.h"
#import "TAPopTableViewCell.h"

@interface TAPopListTableViewController ()

@end

@implementation TAPopListTableViewController


- (id)initWithNibName:(NSString *)nibNameOrNil andDetails:(NSDictionary*)detailsDict bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
        // Custom initialization
        self.detailsDict = detailsDict;
    }
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return [[self.detailsDict objectForKey:@"Values" ] count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell =  nil;
    
    static NSString *CellIdentifier = @"TAPopTableViewCell";
    
    TAPopTableViewCell *tableCell = (TAPopTableViewCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if(tableCell == nil)
    {
        NSArray *nibArray = [[NSBundle mainBundle] loadNibNamed:@"TAPopTableViewCell" owner:self options:nil];
        tableCell = (TAPopTableViewCell*)[nibArray objectAtIndex:0];
    }
    
    tableCell.selectionStyle = UITableViewCellSelectionStyleNone;
    tableCell.accessoryType = UITableViewCellAccessoryNone;
    
    NSMutableArray *values = [self.detailsDict objectForKey:@"Values"];
    tableCell.nameLbl.text = [values objectAtIndex:indexPath.row];
    
    cell = tableCell;
    
    return cell;

}


#pragma mark - Table view delegate -

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    //    if(self.selectedIndex != indexPath.row)
    //    {
    //        self.selectedSubTypeIndex = 0;
    //        self.selectedIndex = indexPath.row;
    //        [self.detailsListArray removeAllObjects];
    //
    //        if(_selectedIndex == 0)
    //        {
    //            [self.view removeFromSuperview];
    //            return;
    //        }
    //
    //        [self loadScreen];
    //    }
}

@end
