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

@property (strong , nonatomic) NSArray *arraTbleView;
@property (strong, nonatomic) NSArray *array;

@end

@implementation QuestionsTabOne

NSInteger *userChoiseCategory;

- (void)viewDidLoad {
    [super viewDidLoad];

}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:YES];
    self.arraTbleView = @[@"categor 1", @"categor 2", @"categor 3",@"categor 4",@"categor 5"];    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return  self.arraTbleView.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
        
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellCategory" forIndexPath:indexPath];

    NSString *stingCell = [_arraTbleView objectAtIndex:indexPath.row];
    cell.textLabel.text = stingCell;
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    QuestionsTabTwo *quTabTwo = [QuestionsTabTwo new];
    
        switch (indexPath.row) {
            case 0:
                userChoiseCategory = indexPath.row;
                break;
            case 1:
                userChoiseCategory = indexPath.row;
                break;
            case 2:
                userChoiseCategory = indexPath.row;
                break;
            case 3:
                userChoiseCategory = indexPath.row;
                break;
            case 4:
                userChoiseCategory = indexPath.row;
                break;
    }
    
}

-(NSUInteger) returnChoiseCategory{
    return userChoiseCategory;
}


@end
