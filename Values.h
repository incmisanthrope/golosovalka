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

-(NSMutableArray *)arrayTableCategoryV;
-(void) deleteItemInArrayCategory:(NSUInteger*)numberItem;
-(void) addItemInArrayCategory:(NSString*)insertString;

//-(void) addItmeInArrayQuestion:(NSString*)stringQuestion;

-(NSMutableArray*) returnCategoryArray;

@end
