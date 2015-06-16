

#import "CoreDataHelper.h"

@implementation CoreDataHelper

#define kDBNameSQLite									@"Tailor App.sqlite"
#define kDBName											@"Tailor App"

static CoreDataHelper *coreDataHelper = nil;

#pragma mark -
#pragma mark Core Data stack

/*----------------------------------------------------------------------------------------------*/
+ (CoreDataHelper *)sharedCoreDataHelper
{
	if(coreDataHelper == nil)
	{
		coreDataHelper = [[CoreDataHelper alloc]init];
	}	
	return coreDataHelper;
}
/*----------------------------------------------------------------------------------------------*/
/**
 Returns the managed object context for the application.
 If the context doesn't already exist, it is created and bound to the persistent store coordinator 
 for the application.
 */
/*----------------------------------------------------------------------------------------------*/
- (NSManagedObjectContext *) managedObjectContext 
{	
    if (managedObjectContext != nil) 
	{
        return managedObjectContext;
    }
	
    NSPersistentStoreCoordinator *coordinator = [self persistentStoreCoordinator];
    if (coordinator != nil) 
	{
        managedObjectContext = [[NSManagedObjectContext alloc] init];
        [managedObjectContext setPersistentStoreCoordinator: coordinator];
    }
    return managedObjectContext;
}
/*----------------------------------------------------------------------------------------------*/
- (NSManagedObjectContext *)createManagedObjectContext
{
	NSPersistentStoreCoordinator *coordinator = [self persistentStoreCoordinator];
	NSManagedObjectContext *context;
	
    if (coordinator != nil) 
	{
        context = [[NSManagedObjectContext alloc] init];
        [context setPersistentStoreCoordinator: coordinator];
		[context setUndoManager:nil];
    }
    return context;
}
/*----------------------------------------------------------------------------------------------*/
/**
 Returns the managed object model for the application.
 If the model doesn't already exist, it is created by merging all of the models found in the 
 application bundle.
 */
- (NSManagedObjectModel *)managedObjectModel 
{
	
    if (managedObjectModel != nil) 
	{
        return managedObjectModel;
    }
    managedObjectModel = [NSManagedObjectModel mergedModelFromBundles:nil];
    return managedObjectModel;
}
/*----------------------------------------------------------------------------------------------*/
/**
 Returns the persistent store coordinator for the application.
 If the coordinator doesn't already exß∫ist, it is created and the application's store added to it.
 */
/*----------------------------------------------------------------------------------------------*/
- (NSPersistentStoreCoordinator *)persistentStoreCoordinator 
{	
    if (persistentStoreCoordinator != nil) 
	{
        return persistentStoreCoordinator;
    }	
	
	NSString *storePath = [[self applicationDocumentsDirectory] stringByAppendingPathComponent: kDBNameSQLite];
	/*
	 Set up the store.
	 For the sake of illustration, provide a pre-populated default store.
	 */
	NSFileManager *fileManager = [NSFileManager defaultManager];
	
	// If the expected store doesn't exist, copy the default store.
	if (![fileManager fileExistsAtPath:storePath]) 
	{
		NSString *defaultStorePath = [[NSBundle mainBundle] pathForResource:kDBName ofType:@"sqlite"];
		if (defaultStorePath)
		{
			[fileManager copyItemAtPath:defaultStorePath toPath:storePath error:NULL];
		}
	}
    else
    {
        
    }
	
	NSURL *storeUrl = [NSURL fileURLWithPath:storePath];	
	
	NSDictionary *options = [NSDictionary dictionaryWithObjectsAndKeys:[NSNumber numberWithBool:YES], NSMigratePersistentStoresAutomaticallyOption, [NSNumber numberWithBool:YES], NSInferMappingModelAutomaticallyOption, nil];	
    persistentStoreCoordinator = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel: [self managedObjectModel]];
	
	NSError *error;
	if (![persistentStoreCoordinator addPersistentStoreWithType:NSSQLiteStoreType configuration:nil URL:storeUrl options:options error:&error]) 
	{
		// Update to handle the error appropriately.
		NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
		exit(-1);  // Fail
    }    
	
    return persistentStoreCoordinator;
}
/*----------------------------------------------------------------------------------------------*/
#pragma mark -
#pragma mark Application's documents directory
/**
 Returns the path to the application's documents directory.
 */
/*----------------------------------------------------------------------------------------------*/
- (NSString *)applicationDocumentsDirectory 
{
	
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *basePath = ([paths count] > 0) ? [paths objectAtIndex:0] : nil;
    return basePath;
}
/*----------------------------------------------------------------------------------------------*/
@end
