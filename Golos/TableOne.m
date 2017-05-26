//
//  TableOne.m
//  Golos
//
//  Created by Gleb R on 17.05.17.
//  Copyright © 2017 IncMisanthrope. All rights reserved.
//

#import "TableOne.h"
#import "TableTwo.h"

@interface TableOne ()

@property (strong , nonatomic) NSArray *arraTbleView;
@property (strong, nonatomic) NSArray *array;
@property (assign, nonatomic) NSInteger *userChoiseValue;

@end

@implementation TableOne


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
        
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell1" forIndexPath:indexPath];

    NSString *stingCell = [_arraTbleView objectAtIndex:indexPath.row];
    cell.textLabel.text = stingCell;
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    NSLog(@"%ld", (long)indexPath.row);
    
        switch (indexPath.row) {
        case 0:
            NSLog(@"case 0 selected");
                _userChoiseValue = indexPath.row;
                NSLog(@"value swotch return, %ld",(long) _userChoiseValue);
            break;
            case 1:
            NSLog(@"case 1 selected");
                _userChoiseValue = indexPath.row;
                NSLog(@"value swotch return, %ld",(long) _userChoiseValue);
            break;
            case 2:
            NSLog(@"case 2 selected");
                _userChoiseValue = indexPath.row;
                NSLog(@"value swotch return, %ld",(long) _userChoiseValue);
                break;
        default:
            break;
    }
  
}

-(NSInteger) returnUserChoise{
    return *(_userChoiseValue);
}


@end
