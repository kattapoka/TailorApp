//
//  DressDivisionsList.h
//  Tailor App
//
//  Created by Padmam on 10/06/15.
//  Copyright (c) 2015 csg. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface DressDivisionsList : NSManagedObject

@property (nonatomic, retain) NSNumber * divisionId;
@property (nonatomic, retain) NSNumber * divisionParentID;
@property (nonatomic, retain) NSString * divisionName;

@end
