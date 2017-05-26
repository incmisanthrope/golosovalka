//
//  TableTwo.m
//  Golos
//
//  Created by Gleb R on 18.05.17.
//  Copyright © 2017 IncMisanthrope. All rights reserved.
//

#import "TableTwo.h"
#import "TableOne.h"

//

@interface TableTwo ()
@property (strong, nonatomic) NSArray *arrayCategorOne, *arrayCategorTwo, *arrayCategorThree, *arrayCategorFour, *arrayCategorFive;
@property (strong, nonatomic) NSString *strTableViewCell;
@property NSInteger *userChoiseItemVariable;
@end

@implementation TableTwo

NSInteger *var;


- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:YES];
    self.arrayCategorOne = @[@"catOne_1", @"catOne_2", @"catOne_3",@"catOne_4",@"catOne_5"];
    self.arrayCategorTwo = @[@"catTwo_1", @"catTwo_2", @"catTwo_3",@"catTwo_4",@"catTwo_5"];
    self.arrayCategorThree  = @[@"1", @"2", @"3",@"4",@"5"];
    self.arrayCategorFour = @[@"1", @"2", @"3",@"4",@"5"];
    self.arrayCategorFive = @[@"1", @"2", @"3",@"4",@"5"];


    TableOne *tabOne = [TableOne new];

    _userChoiseItemVariable = [tabOne returnUserChoise];
    NSLog(@"%ld",(long) _userChoiseItemVariable);

    
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.arrayCategorOne.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell2" forIndexPath:indexPath];
    
    
    switch ((long) var) {
        case 0:
            NSLog(@"table view TWO switch work");
            _strTableViewCell = [_arrayCategorOne objectAtIndex:indexPath.row];
            break;
        
        case 1:
            _strTableViewCell = [_arrayCategorTwo objectAtIndex:indexPath.row];
            break;
    }
    

    cell.textLabel.text = _strTableViewCell;
    
    return cell;
}

@end
