//
//  Values.m
//  Golos
//
//  Created by Gleb R on 23.05.17.
//  Copyright © 2017 IncMisanthrope. All rights reserved.
//

#import "Values.h"

@interface Values ()

@property (strong, nonatomic) NSMutableArray* rrayTableCategory;

@end

@implementation Values

NSMutableArray *arrayTableCategory1;
NSMutableArray *arrayTableQuestions;

- (NSMutableArray *)arrayTableCategoryV {
    if ((NSUInteger*)[arrayTableCategory1 count] == nil) {
        arrayTableCategory1 = [NSMutableArray arrayWithArray:@[@"One", @"Two", @"Three", @"Four", @"Five"]];
    }
    return arrayTableCategory1;
}

-(NSMutableArray*) arrayTableQuestionsV:(NSString*)stringQuestion itemId:(NSInteger*)itemId {
    if ((NSUInteger*)[arrayTableQuestions count] == nil) {
        arrayTableQuestions = [NSMutableArray arrayWithObject:stringQuestion];
    } else if ((NSUInteger*)[arrayTableQuestions count] < (NSUInteger*)[arrayTableCategory1 count]) {
        [arrayTableQuestions addObject:stringQuestion];
    }
    return  arrayTableQuestions;
}

-(void) initArraCategory{
    if (arrayTableCategory1==nil) {
        arrayTableCategory1 = [NSMutableArray arrayWithArray: @[@"One", @"Two", @"Three", @"Four", @"Five"]];
    }

}

-(NSMutableArray*) returnCategoryArray{
    return arrayTableCategory1;
}

-(void) addItemInArrayCategory:(NSString*)insertString{
    [arrayTableCategory1 addObject:insertString];
}

-(void) addItmeInArrayQuestion:(NSString*)stringQuestion {
   
    NSLog(@"%@", arrayTableQuestions);
}

-(void)deleteItemInArrayCategory:(NSUInteger *)numberItem{
    NSLog(@"%@", arrayTableCategory1);
    [arrayTableCategory1 removeObjectAtIndex:(long)numberItem];
    NSLog(@"DELETE ROW : %ld ARRAY : %@", (long)numberItem, arrayTableCategory1);
}


@end
