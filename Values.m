//
//  Values.m
//  Golos
//
//  Created by Gleb R on 23.05.17.
//  Copyright © 2017 IncMisanthrope. All rights reserved.
//

#import "Values.h"
#import "TabEditCategory.h"
#import "GQuestionTableViewController.h"

@interface Values ()

@property (strong, nonatomic) NSMutableArray *rrayTableCategory, *arrayCategorys, *tempArray;
@property (strong, nonatomic) NSMutableDictionary *dictQuestions;

@end

@implementation Values

NSMutableArray *arrayTableCategory1, *tempArray, *arrayTableQuestions;
NSInteger *idCategory;
NSMutableArray *temp;

// категории
- (NSMutableArray *)arrayTableCategoryV {
    if (!arrayTableCategory1){
        arrayTableCategory1 = [NSMutableArray arrayWithArray:@[@"One", @"Two", @"Three", @"Four", @"Five"]];
    }
    return arrayTableCategory1;
}

-(NSMutableArray*) returnCategoryArray{
    return arrayTableCategory1;
}

-(NSInteger*) returnItemCategory:(NSInteger*)itemNum{
    return idCategory;
}

-(void) addItemInArrayCategory:(NSString*)insertValue{
    [arrayTableCategory1 addObject:insertValue];
}

-(void) changeItemCategory:(NSInteger*)item{
    
}

-(void)deleteItemInArrayCategory:(NSUInteger *)numberItem{
    [arrayTableCategory1 removeObjectAtIndex:(long)numberItem];
}

-(void) setIdCategory:(NSInteger*)categoryName{
    idCategory = categoryName;
}
-(NSInteger*) returnCategoryName{
    return idCategory;
}


//вопросы

-(void) addItemTableQuestionsV:(NSInteger*)categoryQuestionKey itemId:(NSString*)questionValue {
    
}

-(void) deleteItemTableQuestionsV:(NSInteger*)categoryQuestionKey itemId:(NSInteger*)questionValue {
    [arrayTableQuestions removeObjectAtIndex:(long)questionValue];
}

-(NSArray*) arrayTableQuestionsV:(NSInteger*)keyQuestion{
    return arrayTableQuestions[(long)keyQuestion];
}

-(void) addItmeInArrayQuestion:(NSInteger*)keyCategory question:(NSString*)stringQuestion {
    if ((long)keyCategory >= arrayTableQuestions.count | (long)keyCategory == 0) {
    }
    NSArray *arrayForTest = @[@"test"];
    temp = arrayTableQuestions[(long)keyCategory];
    [arrayTableQuestions setObject:temp atIndexedSubscript:(long)keyCategory];
    NSLog(@"addddddddd %@", arrayTableQuestions);
    NSLog(@"addddddddd %@", arrayForTest);
}

-(NSMutableArray*) returnQuestionForCategory:(NSInteger*)category{
    return  temp;
}

@end
