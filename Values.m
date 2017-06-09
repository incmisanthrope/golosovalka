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


@end

@implementation Values

static Values *sharedVal = nil;

+(Values*) sharedValues {
    if (sharedVal == nil)
    {
        sharedVal = [[Values alloc] init];
    }
    return sharedVal;
}

-(void) initArrays{
    if (!_arrayCategorys) {
        _arrayCategorys = [NSMutableArray arrayWithArray:_arrayTableCategory1];
        NSLog(@"INIT");
    }
}


// категории
- (NSMutableArray *)arrayTableCategoryV {
    if (!_arrayTableCategory1){
        _arrayTableCategory1 = [NSMutableArray arrayWithArray:@[@"One", @"Two", @"Three", @"Four", @"Five"]];
    }
    return _arrayTableCategory1;
}

-(void) addItemInArrayCategory:(NSString*)insertValue{
    [_arrayTableCategory1 addObject:insertValue];
}

-(void)deleteItemInArrayCategory:(NSUInteger *)numberItem{
    [_arrayTableCategory1 removeObjectAtIndex:(long)numberItem];
}

-(void) setIdCategory:(NSInteger*)categoryName{
    _idCategory = categoryName;
}
-(NSInteger*) returnCategoryName{
    return _idCategory;
}


//вопросы

-(void) deleteItemTableQuestionsV:(NSInteger*)categoryQuestionKey itemId:(NSInteger*)questionValue {
    [_arrayQuestions removeObjectAtIndex:(long)questionValue];
}

-(void) addItmeInArrayQuestion:(NSString*)stringQuestion {
    if (!_arrayQuestions) {
        _arrayQuestions = [NSMutableArray arrayWithObject:stringQuestion];
        NSLog(@"Выход из добавления %@", _arrayQuestions);
    }
    if (_arrayQuestions) {
        [_arrayQuestions addObject:stringQuestion];
    }
}

-(NSMutableArray*) returnQuestionFromCategory:(NSString*)categoryQuestion{
    _questionFromCategory = [_dictQuestions valueForKey:_category];
    NSLog(@"returnQuestionFromCategory  %@", _questionFromCategory);
    return _questionFromCategory;
}

@end
























