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
@property(nonatomic, assign) id<NSFetchRequestResult> delegate;

@property (strong, nonatomic) NSString *question, *category;
@property (strong, nonatomic) NSMutableArray *arrayCatQustion, *arrayCategorys, *arrayQuestions, *questionFromCategory, *tempArray, *arrayTableCategory1, *temp;
@property (strong, nonatomic) NSMutableDictionary *dictQuestions;
@property (assign, nonatomic) NSInteger *idCategory, *categoryCount;
@property (strong, nonatomic) NSArray *arrayAllbject, *allObj;
@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;


- (NSFetchedResultsController *)fetchedResultsController;


-(void) setIdCategory:(NSInteger*)categoryName;

-(void) initArrays;

-(void) addObject:(NSString*)objAdd;

-(NSArray*) allCategory;


@end
