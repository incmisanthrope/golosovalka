//
//  TabTwoTableViewController.m
//  Golos
//
//  Created by Gleb R on 26.05.17.
//  Copyright © 2017 IncMisanthrope. All rights reserved.
//

#import "TabEditCategory.h"
#import "Values.h"
#import "GQuestionTableViewController.h"
#import "GAddCategoryViewController.h"


@interface TabEditCategory ()


@end

@implementation TabEditCategory


#pragma mark - Segues

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"Questions"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        Category *object = [self.fetchedResultsController objectAtIndexPath:indexPath];
        GQuestionTableViewController *controller = (GQuestionTableViewController *)[[segue destinationViewController] topViewController];
        [controller setQuestionItem:object];
    }
}

#pragma mark - Table View


- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

-(void)viewWillAppear:(BOOL)animated{
    self.clearsSelectionOnViewWillAppear = self.splitViewController.isCollapsed;
    [super viewWillAppear:YES];
    
}

- (void)initializeFetchedResultsController
{
    [self setFetchedResultsController:[[NSFetchedResultsController alloc] initWithFetchRequest:[Category fetchRequest] managedObjectContext:[Values sharedValues].persistentContainer.viewContext sectionNameKeyPath:@"category" cacheName:@"Cache"]];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    id <NSFetchedResultsSectionInfo> sectionInfo = [self.fetchedResultsController sections][section];
    return [sectionInfo numberOfObjects];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellEditCategory" forIndexPath:indexPath];
    Category *category = [self.fetchedResultsController objectAtIndexPath:indexPath];
    [self configureCell:cell withEvent:category];
    return cell;
}

- (void)configureCell:(UITableViewCell *)cell withEvent:(Category *)category {
    cell.textLabel.text = category.category;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    [[Values sharedValues]setIdCategory:(NSInteger*)indexPath.row];
    [[Values sharedValues]setCategory:[_arrayCategory objectAtIndex:indexPath.row]];
    NSLog(@"ID CATEGORY IN EDIT %ld", (long)[[Values sharedValues]idCategory]);
    UILongPressGestureRecognizer *longPress = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(longPressEditCategory:)];
    [self.tableView addGestureRecognizer:longPress];
}



- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        NSManagedObjectContext *context = [self.fetchedResultsController managedObjectContext];
        [context deleteObject:[self.fetchedResultsController objectAtIndexPath:indexPath]];
        
        NSError *error = nil;
        if (![context save:&error]) {
            NSLog(@"Unresolved error %@, %@", error, error.userInfo);
            abort();
        }
    }
}

#pragma mark - Fetched results controller

- (NSFetchedResultsController*)fetchedResultsController {
    if (_fetchedResultsController != nil) {
        return _fetchedResultsController;
    }
    
    NSFetchRequest<Category *> *fetchRequest = Category.fetchRequest;
    
    [fetchRequest setFetchBatchSize:20];
    
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:@"category" ascending:NO];
    
    [fetchRequest setSortDescriptors:@[sortDescriptor]];
    
    NSFetchedResultsController<Category *> *aFetchedResultsController = [[NSFetchedResultsController alloc] initWithFetchRequest:fetchRequest managedObjectContext:[Values sharedValues].persistentContainer.viewContext sectionNameKeyPath:nil cacheName:@"Master"];
    
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



- (IBAction)longPressEditCategory:(id)sender {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController *testViewController = [storyboard  instantiateViewControllerWithIdentifier:@"EditCategoryScreen"];
    [self.navigationController pushViewController:testViewController animated:YES];
}


@end
