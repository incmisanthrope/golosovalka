//
//  Values.h
//  Golos
//
//  Created by Gleb R on 23.05.17.
//  Copyright © 2017 IncMisanthrope. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@interface Values : NSObject

+(Values*) sharedValues;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

@property (strong, nonatomic) NSString *question, *category;
@property (strong, nonatomic) NSMutableArray *arrayCatQustion, *arrayCategorys, *arrayQuestions, *questionFromCategory, *tempArray, *arrayTableCategory1, *temp;
@property (strong, nonatomic) NSMutableDictionary *dictQuestions;
@property (assign, nonatomic) NSInteger *idCategory, *categoryCount;
@property (strong, nonatomic) NSArray *arrayAllbject, *allObj;
@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;

- (NSFetchedResultsController *)fetchedResultsController;
-(NSMutableArray *)arrayTableCategoryV;

-(void) deleteItemInArrayCategory:(NSUInteger*)numberItem;
-(void) addItemInArrayCategory:(NSString*)insertValue;

-(void) addItmeInArrayQuestion:(NSString*)stringQuestion;
-(void) deleteItemTableQuestionsV:(NSInteger*)categoryQuestionKey itemId:(NSInteger*)questionValue;


-(void) setIdCategory:(NSInteger*)categoryName;
-(NSInteger*) returnCategoryName;


-(void) initArrays;

-(NSMutableArray*) returnQuestionFromCategory:(NSString*)categoryQuestion;


-(void) addObject:(NSString*)objAdd;
-(NSArray*) allCategory;





@end
