//
//  AppDelegate.h
//  Golos
//
//  Created by Gleb R on 17.05.17.
//  Copyright © 2017 IncMisanthrope. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>
@property (readonly, strong) NSPersistentStoreCoordinator *persistentStoreCoordinator;

@property (strong, nonatomic) UIWindow *window;

-(void) generatePlist;

@end

