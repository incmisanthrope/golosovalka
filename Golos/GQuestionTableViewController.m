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

@interface GQuestionTableViewController ()


@end

@implementation GQuestionTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView reloadSections:[NSIndexSet indexSetWithIndex:0] withRowAnimation:UITableViewRowAnimationFade];    
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:YES];
    Category *categoryObject;
    _arrayQuestions = [[Values sharedValues]arrayQuestions];
    [self.tableView reloadSections:[NSIndexSet indexSetWithIndex:0] withRowAnimation:UITableViewRowAnimationFade];
    NSLog(@"ViewWillAppear %@", _arrayQuestions);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.arrayQuestions.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellEditQuestion" forIndexPath:indexPath];
    NSString *stringTableViewCell = [self.arrayQuestions objectAtIndex:indexPath.row];
    cell.textLabel.text = stringTableViewCell;
     
    return cell;
}


@end
