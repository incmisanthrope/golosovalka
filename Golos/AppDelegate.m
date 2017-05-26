//
//  AppDelegate.m
//  Golos
//
//  Created by Gleb R on 17.05.17.
//  Copyright © 2017 IncMisanthrope. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate



- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    return YES;
}

-(void) generatePlist {
    NSDictionary *dictionary = [NSDictionary dictionaryWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"data" ofType:@"plist"]];
    NSLog(@"dictionary = %@", dictionary);
    NSArray *array = [dictionary objectForKey:@"qu"];
    NSLog(@"array = %@", array);
    
}


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
