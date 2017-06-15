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
#import "Category+CoreDataProperties.h"

@interface Values ()


@end

@implementation Values

static Values *sharedVal = nil;

+(Values*) sharedValues {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
      sharedVal = [self new];
    });
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

#pragma mark - Core Data stack


-(void) addObject:(NSString*)objAdd  {
    Category *object = [NSEntityDescription insertNewObjectForEntityForName:@"Category" inManagedObjectContext:self.persistentContainer.viewContext];
    object.category = objAdd;
    [self.persistentContainer.viewContext save:nil];
    [self print];
}

-(void) print {
    NSArray *allObj = [self allCategory];
    for (Category *category in allObj) {
        NSLog(@"%@", category.category);
    }
}

-(NSArray*) allCategory {
    NSEntityDescription *description = [NSEntityDescription entityForName:@"Category" inManagedObjectContext:self.persistentContainer.viewContext];
    NSError *error = nil;
    NSFetchRequest *request = [NSFetchRequest new];
    [request setEntity:description];
      _arrayAllbject = [self.persistentContainer.viewContext executeFetchRequest:request error:&error];
    if (error) {
        NSLog(@"%@", [error localizedDescription]);
    }
    return _arrayAllbject;
}

- (NSFetchedResultsController *)fetchedResultsCategory {
    if (_fetchedResultsController == nil) {
        NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
        NSEntityDescription *entity = [NSEntityDescription entityForName:@"Category" inManagedObjectContext:self.persistentContainer.viewContext];
        [fetchRequest setEntity:entity];
        
        NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:@"category" ascending:YES];
        NSArray *sortDescriptors = [[NSArray alloc] initWithObjects:sortDescriptor, nil];
        
        [fetchRequest setSortDescriptors:sortDescriptors];
        
        NSFetchedResultsController *aFetchedResultsController = [[NSFetchedResultsController alloc] initWithFetchRequest:fetchRequest managedObjectContext:self.persistentContainer.viewContext sectionNameKeyPath:nil cacheName:@"Root"];
        aFetchedResultsController.delegate = self;
        self.fetchedResultsController = aFetchedResultsController;
    }
    
    return _fetchedResultsController;
}

@synthesize persistentContainer = _persistentContainer;
- (NSPersistentContainer *)persistentContainer {
    @synchronized (self) {
        if (_persistentContainer == nil) {
            _persistentContainer = [[NSPersistentContainer alloc] initWithName:@"Cor"];
            [_persistentContainer loadPersistentStoresWithCompletionHandler:^(NSPersistentStoreDescription *storeDescription, NSError *error) {
                if (error != nil) {
                    
                    NSLog(@"Unresolved error %@, %@", error, error.userInfo);
                    abort();
                }
            }];
        }
    }
    return _persistentContainer;
}

#pragma mark - Core Data Saving support

- (void)saveContext {
    NSManagedObjectContext *context = self.persistentContainer.viewContext;
    NSError *error = nil;
    if ([context hasChanges] && ![context save:&error]) {
        NSLog(@"Unresolved error %@, %@", error, error.userInfo);
        abort();
    }
}

@end
























