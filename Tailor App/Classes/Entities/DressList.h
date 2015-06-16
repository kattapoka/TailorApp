//
//  DressList.h
//  Tailor App
//
//  Created by Padmam on 10/06/15.
//  Copyright (c) 2015 csg. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface DressList : NSManagedObject

@property (nonatomic, retain) NSNumber * dressID;
@property (nonatomic, retain) NSString * dressName;

@end
