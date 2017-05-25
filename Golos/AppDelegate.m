//
//  AppDelegate.m
//  Golos
//
//  Created by Gleb R on 17.05.17.
//  Copyright © 2017 IncMisanthrope. All rights reserved.
//

#import "AppDelegate.h"
#import "Coder.h"

@interface AppDelegate ()

@end

@implementation AppDelegate



- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
//    self.generatePlist;
    return YES;
}

-(void) generatePlist {
//    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
//    NSString *documentsDirectory = [paths objectAtIndex:0];
//    NSString *path = [documentsDirectory stringByAppendingPathComponent:@"plist.plist"];
//    NSFileManager *fileManager = [NSFileManager defaultManager];
//    
//    NSString *rpath = [[NSBundle new] pathForResource:@"plist" ofType:@"qu"];
//    
//    if (![fileManager fileExistsAtPath: path]) {
//        
//        path = [documentsDirectory stringByAppendingPathComponent: [NSString stringWithFormat:@"plist.plist"] ];
//    }
//    
//    NSMutableDictionary *data;
//    
//    if ([fileManager fileExistsAtPath: path]) {
//        
//        data = [[NSMutableDictionary alloc] initWithContentsOfFile: path];
//    }
//    else {
//        // If the file doesn’t exist, create an empty dictionary
//        data = [[NSMutableDictionary alloc] init];
//    }
//    
//    //To insert the data into the plist
//    [data setObject:@"data" forKey:@"value"];
//    [data writeToFile:rpath atomically:YES];
//    
//    //To retrieve the data from the plist
//    NSMutableDictionary *savedValue = [[NSMutableDictionary alloc] initWithContentsOfFile: path];
//    NSString *value = [savedValue objectForKey:@"value"];
//    
//
//    NSLog(@"%@",value);
    
    NSDictionary *dictionary = [NSDictionary dictionaryWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"data" ofType:@"plist"]];
    NSLog(@"dictionary = %@", dictionary);
    NSArray *array = [dictionary objectForKey:@"qu"];
    NSLog(@"array = %@", array);
    
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}





@end
