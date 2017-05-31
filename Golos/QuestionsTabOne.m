//
//  TableOne.m
//  Golos
//
//  Created by Gleb R on 17.05.17.
//  Copyright © 2017 IncMisanthrope. All rights reserved.
//

#import "QuestionsTabOne.h"
#import "QuestionsTabTwo.h"

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
    _arrayTableCategory = [NSMutableArray arrayWithArray: @[@"One", @"Two", @"Three", @"Four", @"Five"]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return  self.arrayTableCategory.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
        
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellCategory" forIndexPath:indexPath];

    NSString *stingCell = [_arrayTableCategory objectAtIndex:indexPath.row];
    cell.textLabel.text = stingCell;
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
        
        switch (indexPath.row) {
            case 0:
                userChoiseCategory = (NSInteger *)indexPath.row;
                break;
            case 1:
                userChoiseCategory = (NSInteger *)indexPath.row;
                break;
            case 2:
                userChoiseCategory = (NSInteger *)indexPath.row;
                break;
            case 3:
                userChoiseCategory = (NSInteger *)indexPath.row;
                break;
            case 4:
                userChoiseCategory = (NSInteger *)indexPath.row;
                break;
    }
    
}

-(NSUInteger) returnChoiseCategory{
    return (long)userChoiseCategory;
}

-(NSMutableArray*) returnCategoryArray{
    return arrayTableCategory;
}


@end
