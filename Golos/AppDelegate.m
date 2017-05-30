//
//  AppDelegate.m
//  Golos
//
//  Created by Gleb R on 17.05.17.
//  Copyright © 2017 IncMisanthrope. All rights reserved.
//

#import "AppDelegate.h"
#import "Entity+CoreDataProperties.h"

@interface AppDelegate ()

@end

@implementation AppDelegate



- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    return YES;
}

-(void) addCategoryToDataB:(NSString*)category{
    NSManagedObject *managedObject = [NSEntityDescription insertNewObjectForEntityForName:@"Entity" inManagedObjectContext:self.persistentContainer.viewContext];
    [managedObject setValue:category forKey:@"category"];
}

-(void) addQuestionToDataB:(NSString*)question{
    NSManagedObject *managedObject = [NSEntityDescription insertNewObjectForEntityForName:@"Entity" inManagedObjectContext:self.persistentContainer.viewContext];
    [managedObject setValue:question forKey:@"questions"];
}

-(void) addAnswerToDataB:(NSString*)answer{
    NSManagedObject *managedObject = [NSEntityDescription insertNewObjectForEntityForName:@"Entity" inManagedObjectContext:self.persistentContainer.viewContext];
    [managedObject setValue:answer forKey:@"answer"];
}

-(void) logEntity{
    NSLog(@"%@", [Entity fetchRequest]);
}

-(void) printAllFormCoreData{
    NSFetchRequest *request = [NSFetchRequest new];
    NSError *requestError = nil;
    NSEntityDescription *descript = [NSEntityDescription entityForName:@"Entity" inManagedObjectContext:self.persistentContainer.viewContext];
    
    [request setEntity:descript];
    
    NSError *requesError = nil;
    NSArray *reaultArrar = [self.persistentContainer.viewContext executeFetchRequest:request error:&requestError];
    
    if (requestError) {
        NSLog(@"%@", [requestError localizedDescription]);
    }
    
    for (Entity* obj in reaultArrar) {
        NSLog(@"%@ %@ %@",obj.category, obj.questions, obj.answer);
    }
    
}

#pragma mark - Core Data stack

@synthesize persistentContainer = _persistentContainer;

- (NSPersistentContainer *)persistentContainer {
    // The persistent container for the application. This implementation creates and returns a container, having loaded the store for the application to it.
    @synchronized (self) {
        if (_persistentContainer == nil) {
            _persistentContainer = [[NSPersistentContainer alloc] initWithName:@"Cor"];
            [_persistentContainer loadPersistentStoresWithCompletionHandler:^(NSPersistentStoreDescription *storeDescription, NSError *error) {
                if (error != nil) {
                    // Replace this implementation with code to handle the error appropriately.
                    // abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                    
                    /*
                     Typical reasons for an error here include:
                     * The parent directory does not exist, cannot be created, or disallows writing.
                     * The persistent store is not accessible, due to permissions or data protection when the device is locked.
                     * The device is out of space.
                     * The store could not be migrated to the current model version.
                     Check the error message to determine what the actual problem was.
                     */
                    NSLog(@"Unresolved error %@, %@", error, error.userInfo);
                    abort();
                }
            }];
        }
    }
    
    return _persistentContainer;
}

#pragma mark - Core Data Saving support

- (void)saveContext {
    NSManagedObjectContext *context = self.persistentContainer.viewContext;
    NSError *error = nil;
    if ([context hasChanges] && ![context save:&error]) {
        // Replace this implementation with code to handle the error appropriately.
        // abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
        NSLog(@"Unresolved error %@, %@", error, error.userInfo);
        abort();
    }
}

#pragma mark - Other 

- (void)applicationWillResignActive:(UIApplication *)application {
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
}


- (void)applicationDidBecomeActive:(UIApplication *)application {

}


- (void)applicationWillTerminate:(UIApplication *)application {
}





@end
