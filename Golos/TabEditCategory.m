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


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    GQuestionTableViewController *questionController = (GQuestionTableViewController*)segue.destinationViewController;
    GAddCategoryViewController *addCategryController = (GAddCategoryViewController*)segue.destinationViewController;
    if ([[segue identifier] isEqualToString:@"Question"]) {
        questionController.idCategoryInTab = [[Values sharedValues]category];
    }
    if ([[segue identifier] isEqualToString:@"AddCategory"]) {
        addCategryController.arrayCatergory = self.arrayCategory;
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:YES];
    Values *value = [Values new];
    [value initArrays];
    _arrayCategory = [NSMutableArray arrayWithArray:[[Values sharedValues]arrayTableCategoryV]];
    [self.tableView reloadSections:[NSIndexSet indexSetWithIndex:0] withRowAnimation:UITableViewRowAnimationFade];
    NSLog(@"Обновка вьюшки  %@", [[Values sharedValues]arrayTableCategoryV]);
}

#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    [[Values sharedValues]setCategoryCount:(long)_arrayCategory.count];
    return _arrayCategory.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellEditCategory" forIndexPath:indexPath];
    NSString *stringForCell = [_arrayCategory objectAtIndex:indexPath.row];
    cell.textLabel.text = stringForCell;
    
    
    return cell;
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
        Values *value = [Values new];
        [value deleteItemInArrayCategory:(NSUInteger*)indexPath.row];
        _arrayCategory = [value arrayTableCategoryV];
    }
    [self.tableView reloadSections:[NSIndexSet indexSetWithIndex:0] withRowAnimation:UITableViewRowAnimationFade];
}


- (IBAction)longPressEditCategory:(id)sender {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController *testViewController = [storyboard  instantiateViewControllerWithIdentifier:@"EditCategoryScreen"];
    [self.navigationController pushViewController:testViewController animated:YES];
}


@end
