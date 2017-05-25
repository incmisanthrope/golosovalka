//
//  Values.h
//  Golos
//
//  Created by Gleb R on 23.05.17.
//  Copyright © 2017 IncMisanthrope. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Values : NSObject

@property (strong, nonatomic) NSString *question, *category;

-(void) saveQ:(NSString*)questi saveC:(NSString*) categ;

@end
