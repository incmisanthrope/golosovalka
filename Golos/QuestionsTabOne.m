//
//  TableOne.m
//  Golos
//
//  Created by Gleb R on 17.05.17.
//  Copyright © 2017 IncMisanthrope. All rights reserved.
//

#import "QuestionsTabOne.h"
#import "QuestionsTabTwo.h"
#import "Values.h"
#import "Category+CoreDataProperties.h"

@interface QuestionsTabOne ()

@end

@implementation QuestionsTabOne

- (void)viewDidLoad {
    [super viewDidLoad];
}



-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:YES];
    _arrayTableCategory = [NSMutableArray arrayWithArray:[[Values sharedValues]allCategory]];
    [self.tableView reloadSections:[NSIndexSet indexSetWithIndex:0] withRowAnimation:UITableViewRowAnimationFade];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return  _arrayTableCategory.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellCategory" forIndexPath:indexPath];
    Category *category =  [_arrayTableCategory objectAtIndex:indexPath.row];
    NSString *stringForCell = [NSString stringWithFormat:@"%@", category.category];
    cell.textLabel.text = stringForCell;
    return cell;
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    _userChoiseCategory = (NSInteger*)indexPath.row;
    NSLog(@"%ld", (long)_userChoiseCategory);
}

-(NSUInteger) returnChoiseCategory{
    return (long)_userChoiseCategory;
}

-(NSMutableArray*) returnCategoryArray{
    return _arrayTableCategory;
}


@end
