
#import "TACoreDataHelper.h"
#import "CoreDataHelper.h"


#define SHOULD_SAVE_PARSED_VALUES_TO_COREDATA 0

@implementation TACoreDataHelper

static TACoreDataHelper *coreDataHelper;

#pragma mark -
#pragma mark initilization
#pragma mark -

- (id)init
{
	self = [super init];
	if (self != nil) 
	{
		managedObjectContext	= [[CoreDataHelper sharedCoreDataHelper] createManagedObjectContext];
	}
	return self;
}
/*----------------------------------------------------------------------------------------------*/
/*shared instance*/
/*----------------------------------------------------------------------------------------------*/
+ (TACoreDataHelper *)sharedTACoreDataHelper
{
    @synchronized(self)
    {
        if(coreDataHelper == nil)
        {
            coreDataHelper =[[self alloc] init];
        }
    }
    return coreDataHelper;
}


+ (id)allocWithZone:(NSZone *)zone
{
    @synchronized(self) 
	{
        if (coreDataHelper == nil) 
		{
            coreDataHelper = [super allocWithZone:zone];			
            return coreDataHelper;  // assignment and return on first allocation
        }
    }
    return nil; //on subsequent allocation attempts return nil
}


- (id)copyWithZone:(NSZone *)zone
{
    return self;
}

#pragma mark -
#pragma mark Core data helper funcitons 
#pragma mark -

/*----------------------------------------------------------------------------------------------
 @Method Name  : deleteAllObjects
 @Param        : NSString*
 @Return       : void
 @Description  : 
 ----------------------------------------------------------------------------------------------*/
- (void)deleteAllObjects:(NSString *)entityDescription
{
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
    NSEntityDescription *entity = [NSEntityDescription entityForName:entityDescription inManagedObjectContext:managedObjectContext];
    [fetchRequest setEntity:entity];	
    
    NSError *error;
    NSArray *items = [managedObjectContext executeFetchRequest:fetchRequest error:&error];
	
    for (NSManagedObject *managedObject in items) 
	{
    	[managedObjectContext deleteObject:managedObject];
    }
    if (![managedObjectContext save:&error]) 
	{
		
    }	
}

- (NSManagedObjectContext *)getManagedObjectContext;
{
    return managedObjectContext;
}

- (NSArray*)getAllDressDetailsToList
{
    NSArray *listArray = nil;
    
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"DressList" inManagedObjectContext:managedObjectContext];
    [fetchRequest setEntity:entity];
    
    NSError *error;
    listArray = [managedObjectContext executeFetchRequest:fetchRequest error:&error];
    
    return listArray;
}

- (NSArray*)getDetailsForDressId:(NSNumber *)dressId
{
    NSArray *detailsArray = nil;
    
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"DressDivisionsList" inManagedObjectContext:managedObjectContext];
    [fetchRequest setEntity:entity];
    
    NSPredicate *predicate;
    predicate = [NSPredicate predicateWithFormat:@"divisionParentID = %@", dressId];
    [fetchRequest setPredicate:predicate];
    
    NSError *error;
    detailsArray = [managedObjectContext executeFetchRequest:fetchRequest error:&error];
    
    return detailsArray;
}

@end
