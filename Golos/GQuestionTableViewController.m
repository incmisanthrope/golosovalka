//
//  GQuestionTableViewController.m
//  Golos
//
//  Created by Gleb R on 01.06.17.
//  Copyright © 2017 IncMisanthrope. All rights reserved.
//

#import "GQuestionTableViewController.h"
#import "TabEditCategory.h"
#import "Values.h"
#import "Category+CoreDataProperties.h"

#import <CoreData/CoreData.h>


@interface GQuestionTableViewController ()


@end

@implementation GQuestionTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView reloadSections:[NSIndexSet indexSetWithIndex:0] withRowAnimation:UITableViewRowAnimationFade];
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:YES];
    [self addQuestionItemObject:_questionItem];
}

-(void)addQuestionItemObject:(Category *)object{
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


#pragma mark - Managing the detail item

- (void)setQuestionItem:(Category *)questionItem {
    if (_questionItem != questionItem) {
        _questionItem = questionItem;
        }
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.arrayQuestions.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellEditQuestion" forIndexPath:indexPath];
    cell.textLabel.text = self.questionItem.description;
     
    return cell;
}

- (void)configureCell:(UITableViewCell *)cell withEvent:(Questions *)question {
    cell.textLabel.text = question.questions;
}

#pragma mark - Fetched results controller

- (NSFetchedResultsController*)fetchedResultsController {
    if (_fetchedResultsController != nil) {
        return _fetchedResultsController;
    }
    
    NSFetchRequest *fetchRequest = Category.fetchRequest;
    
    [fetchRequest setFetchBatchSize:20];
    
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:@"questions" ascending:NO];
    
    [fetchRequest setSortDescriptors:@[sortDescriptor]];
    
    
    NSFetchedResultsController<Category *> *aFetchedResultsController = [[NSFetchedResultsController alloc] initWithFetchRequest:fetchRequest managedObjectContext:[Values sharedValues].persistentContainer.viewContext sectionNameKeyPath:nil cacheName:@"Master_Question"];
    
    NSError *error = nil;
    if (![aFetchedResultsController performFetch:&error]) {
        NSLog(@"Unresolved error %@, %@", error, error.userInfo);
        abort();
    }
    
    _fetchedResultsController = aFetchedResultsController;
    return _fetchedResultsController;
}

- (void)controllerWillChangeContent:(NSFetchedResultsController *)controller {
    [self.tableView beginUpdates];
}

- (void)controller:(NSFetchedResultsController *)controller didChangeSection:(id <NSFetchedResultsSectionInfo>)sectionInfo
           atIndex:(NSUInteger)sectionIndex forChangeType:(NSFetchedResultsChangeType)type {
    switch(type) {
        case NSFetchedResultsChangeInsert:
            [self.tableView insertSections:[NSIndexSet indexSetWithIndex:sectionIndex] withRowAnimation:UITableViewRowAnimationFade];
            break;
            
        case NSFetchedResultsChangeDelete:
            [self.tableView deleteSections:[NSIndexSet indexSetWithIndex:sectionIndex] withRowAnimation:UITableViewRowAnimationFade];
            break;
            
        default:
            return;
    }
}

- (void)controller:(NSFetchedResultsController *)controller didChangeObject:(id)anObject
       atIndexPath:(NSIndexPath *)indexPath forChangeType:(NSFetchedResultsChangeType)type
      newIndexPath:(NSIndexPath *)newIndexPath {
    UITableView *tableView = self.tableView;
    
    switch(type) {
        case NSFetchedResultsChangeInsert:
            [tableView insertRowsAtIndexPaths:@[newIndexPath] withRowAnimation:UITableViewRowAnimationFade];
            break;
            
        case NSFetchedResultsChangeDelete:
            [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
            break;
            
        case NSFetchedResultsChangeUpdate:
            [self configureCell:[tableView cellForRowAtIndexPath:indexPath] withEvent:anObject];
            break;
            
        case NSFetchedResultsChangeMove:
            [self configureCell:[tableView cellForRowAtIndexPath:indexPath] withEvent:anObject];
            [tableView moveRowAtIndexPath:indexPath toIndexPath:newIndexPath];
            break;
    }
}

- (void)controllerDidChangeContent:(NSFetchedResultsController *)controller {
    [self.tableView endUpdates];
}









@end
