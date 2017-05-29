//
//  TableTwo.m
//  Golos
//
//  Created by Gleb R on 18.05.17.
//  Copyright © 2017 IncMisanthrope. All rights reserved.
//

#import "QuestionsTabTwo.h"
#import "QuestionsTabOne.h"


@interface QuestionsTabTwo ()
@property (strong, nonatomic) NSArray *arrayCategorOne, *arrayCategorTwo, *arrayCategorThree, *arrayCategorFour, *arrayCategorFive;
@property (strong, nonatomic) NSString *strTableViewCell;

@property (assign, nonatomic) NSInteger* categoryChoise;

@end

@implementation QuestionsTabTwo

NSInteger *userChoiseQuestion;

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
    self.arrayCategorThree  = @[@"31", @"32", @"33",@"34",@"35"];
    self.arrayCategorFour = @[@"41", @"42", @"43",@"44",@"445"];
    self.arrayCategorFive = @[@"51", @"52", @"53",@"54",@"55"];

    QuestionsTabOne *questionsTabOne = [QuestionsTabOne new];
    
    _categoryChoise = [questionsTabOne returnChoiseCategory];
    
}


#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.arrayCategorOne.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellQuestion" forIndexPath:indexPath];

    
    switch ((long)_categoryChoise) {
        case 0:
            _strTableViewCell = [_arrayCategorOne objectAtIndex:indexPath.row];
            break;
        
        case 1:
            _strTableViewCell = [_arrayCategorTwo objectAtIndex:indexPath.row];
            break;
        case 2:
            _strTableViewCell = [_arrayCategorThree objectAtIndex:indexPath.row];
            break;
        case 3:
            _strTableViewCell = [_arrayCategorFour objectAtIndex:indexPath.row];
            break;
        case 4:
            _strTableViewCell = [_arrayCategorFive objectAtIndex:indexPath.row];
            break;
    }
    

    cell.textLabel.text = _strTableViewCell;
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    switch (indexPath.row) {
        case 0:
            userChoiseQuestion = indexPath.row;
            break;
        case 1:
            userChoiseQuestion = indexPath.row;
            break;
        case 2:
            userChoiseQuestion = indexPath.row;
            break;
        case 3:
            userChoiseQuestion = indexPath.row;
            break;
        case 4:
            userChoiseQuestion = indexPath.row;
            break;
            
        default:
            break;
    }
}

-(NSUInteger) returnChoiseQuestion{
    return userChoiseQuestion;
}



@end
