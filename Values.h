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
-(void) addItemInArrayCategory:(NSString*)insertValue;
-(NSMutableArray*) returnCategoryArray;
-(NSInteger*) returnItemCategory:(NSInteger*)itemNum;

-(NSMutableArray*) arrayTableQuestionsV:(NSInteger*)keyQuestion;
-(void) addItmeInArrayQuestion:(NSInteger*)keyCategory question:(NSString*)stringQuestion;
-(void) deleteItemTableQuestionsV:(NSInteger*)categoryQuestionKey itemId:(NSInteger*)questionValue;
-(NSMutableArray*) returnQuestionForCategory:(NSInteger*)category;


-(void) setIdCategory:(NSInteger*)categoryName;
-(NSInteger*) returnCategoryName;

@end
