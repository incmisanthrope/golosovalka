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

@interface QuestionsTabOne ()


@end

@implementation QuestionsTabOne

NSInteger *userChoiseCategory;
NSMutableArray *arrayTableCategory;

- (void)viewDidLoad {
    [super viewDidLoad];
}



-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:YES];
    Values* values = [Values new];
    arrayTableCategory = [values arrayTableCategoryV];
    [self.tableView reloadSections:[NSIndexSet indexSetWithIndex:0] withRowAnimation:UITableViewRowAnimationFade];
    NSLog(@"%@", arrayTableCategory);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return  arrayTableCategory.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
        
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellCategory" forIndexPath:indexPath];

    NSString *stingCell = [arrayTableCategory objectAtIndex:indexPath.row];
    cell.textLabel.text = stingCell;
    
    return cell;
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    userChoiseCategory = (NSInteger*)indexPath.row;
    NSLog(@"%ld", (long)userChoiseCategory);
}

-(NSUInteger) returnChoiseCategory{
    return (long)userChoiseCategory;
}

-(NSMutableArray*) returnCategoryArray{
    return arrayTableCategory;
}


@end
