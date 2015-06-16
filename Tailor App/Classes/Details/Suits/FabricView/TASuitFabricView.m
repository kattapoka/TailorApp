//
//  TASuitFabricView.m
//  Tailor App
//
//  Created by Padmam on 15/06/15.
//  Copyright (c) 2015 csg. All rights reserved.
//

#import "TASuitFabricView.h"
#import "TAFabricCollectionViewCell.h"

@implementation TASuitFabricView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)launchViewWithDetails
{
    [self.subTypeCollectionView registerClass:[TAFabricCollectionViewCell class] forCellWithReuseIdentifier:@"TAFabricCollectionViewCell"];
    
    self.subTypeCollectionView.bounces = YES;
    [self.subTypeCollectionView setScrollEnabled:YES];
    [self.subTypeCollectionView setShowsHorizontalScrollIndicator:NO];
    [self.subTypeCollectionView setShowsVerticalScrollIndicator:NO];
    
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
    return 20;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    TAFabricCollectionViewCell *cell = [self.subTypeCollectionView dequeueReusableCellWithReuseIdentifier:@"TAFabricCollectionViewCell" forIndexPath:indexPath];
    
    if(cell == nil)
    {
        NSArray *nibArray = [[NSBundle mainBundle] loadNibNamed:@"TAFabricCollectionViewCell" owner:self options:nil];
        cell = (TAFabricCollectionViewCell*)[nibArray objectAtIndex:0];
    }
    
    
    return cell;
    
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    //    if(self.selectedSubTypeIndex != indexPath.row)
    //    {
    //        UICollectionViewCell *cell = [collectionView cellForItemAtIndexPath:indexPath];
    //        cell.contentView.backgroundColor = [UIColor blueColor];
    //        self.selectedSubTypeIndex = indexPath.row;
    //
    //        [self loadSubTypeDetails];
    //        [self.subTypeCollectionView reloadData];
    //    }
}

@end
