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

@interface GQuestionTableViewController ()

@property (assign, nonatomic) NSInteger *choiseQuestion;
@property (strong, nonatomic) NSMutableArray *arrayQuestions;

@end

@implementation GQuestionTableViewController

NSInteger *choiseQuestion, *category;
NSString *idCategoryInTab, *idQuestion;

- (void)viewDidLoad {
    [super viewDidLoad];
    Values *value = [Values new];
    _arrayQuestions = (NSMutableArray*)[value arrayTableQuestionsV:category];
    [self.tableView reloadSections:[NSIndexSet indexSetWithIndex:0] withRowAnimation:UITableViewRowAnimationFade];
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:YES];
    Values *value = [Values new];
    _arrayQuestions = (NSMutableArray*)[value returnQuestionForCategory:category];
    [self.tableView reloadSections:[NSIndexSet indexSetWithIndex:0] withRowAnimation:UITableViewRowAnimationFade];
    NSLog(@"ViewWillAppear %@", _arrayQuestions);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSLog(@"Array Question Count %lu", (unsigned long)_arrayQuestions.count);
    return _arrayQuestions.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellEditQuestion" forIndexPath:indexPath];
    NSString *stringTableViewCell = [_arrayQuestions objectAtIndex:indexPath.row];
    cell.textLabel.text = stringTableViewCell;
     
    return cell;
}

-(NSString*) returnCategory{
    return idCategoryInTab;
}


@end
