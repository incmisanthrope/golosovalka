//
//  TabTwoTableViewController.m
//  Golos
//
//  Created by Gleb R on 26.05.17.
//  Copyright © 2017 IncMisanthrope. All rights reserved.
//

#import "TabEditCategory.h"
#import "Values.h"

@interface TabEditCategory ()

@property (strong, nonatomic) NSMutableArray *arrayCategory;
- (IBAction)longPressEditCategory:(id)sender;
@property (strong, nonatomic) Values* values;

@end

@implementation TabEditCategory

NSString* idCategoryInEdit;

- (void)viewDidLoad {
//    self.title = @"Gleb";
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:YES];
    Values *value = [Values new];
    _arrayCategory = [NSMutableArray arrayWithArray:[value arrayTableCategoryV]];
    [self.tableView reloadSections:[NSIndexSet indexSetWithIndex:0] withRowAnimation:UITableViewRowAnimationFade];
}

#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
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
    
    idCategoryInEdit = _arrayCategory[indexPath.row];
    Values *values = [Values new];
    [values setIdCategory:(NSInteger*)indexPath.row];
    NSLog(@"%ld", (long)[values returnCategoryName]);
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
        [self.tableView reloadSections:[NSIndexSet indexSetWithIndex:0] withRowAnimation:UITableViewRowAnimationFade];
    }
}


- (IBAction)longPressEditCategory:(id)sender {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController *testViewController = [storyboard  instantiateViewControllerWithIdentifier:@"EditCategoryScreen"];
    [self.navigationController pushViewController:testViewController animated:YES];
}


@end
