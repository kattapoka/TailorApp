

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import "DressList.h"
#import "DressDivisionsList.h"

@interface TACoreDataHelper : NSObject
{   
	NSManagedObjectContext * managedObjectContext;	
}

+ (TACoreDataHelper *)sharedTACoreDataHelper;


- (void)deleteAllObjects:(NSString *)entityDescription;


- (NSManagedObjectContext *)getManagedObjectContext;

- (NSArray*)getAllDressDetailsToList;
- (NSArray*)getDetailsForDressId:(NSNumber *)dressId;


@end
