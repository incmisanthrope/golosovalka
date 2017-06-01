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

@property (strong, nonatomic) NSMutableArray *arrayMutab;
@property (assign, nonatomic) NSUInteger *idCategor;
- (IBAction)longPressEditCategory:(id)sender;

@end

@implementation TabEditCategory

NSUInteger* idCategory;

- (void)viewDidLoad {
    self.title = @"Gleb";
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:YES];
    Values *value = [Values new];
    _arrayMutab = [NSMutableArray arrayWithArray:[value arrayTableCategoryV]];
    [self.tableView reloadSections:[NSIndexSet indexSetWithIndex:0] withRowAnimation:UITableViewRowAnimationFade];
}

#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _arrayMutab.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellEditCategory" forIndexPath:indexPath];
    NSString* stringForCell = [_arrayMutab objectAtIndex:indexPath.row];
    cell.textLabel.text = stringForCell;
    
    UILongPressGestureRecognizer *longPress = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(longPressEditCategory:)];
    [self.tableView addGestureRecognizer:longPress];
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
}


- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        Values *value = [Values new];
        [value deleteItemInArrayCategory:(NSUInteger*)indexPath.row];
        _arrayMutab = [value arrayTableCategoryV];
        [self.tableView reloadSections:[NSIndexSet indexSetWithIndex:0] withRowAnimation:UITableViewRowAnimationFade];
    }
}

- (IBAction)longPressEditCategory:(id)sender {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController *testViewController = [storyboard  instantiateViewControllerWithIdentifier:@"EditCategoryScreen"];
    [self.navigationController pushViewController:testViewController animated:YES];
}


@end
