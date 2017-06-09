//
//  TableTwo.m
//  Golos
//
//  Created by Gleb R on 18.05.17.
//  Copyright © 2017 IncMisanthrope. All rights reserved.
//

#import "QuestionsTabTwo.h"
#import "QuestionsTabOne.h"
#import "Values.h"

@interface QuestionsTabTwo ()
@property (strong, nonatomic) NSArray *arrayCategorOne, *arrayCategorTwo, *arrayCategorThree, *arrayCategorFour, *arrayCategorFive;
@property (strong, nonatomic) NSString *strTableViewCell;

@property (assign, nonatomic) NSInteger* categoryChoise;

@end

@implementation QuestionsTabTwo

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:YES];
    _arrayCategorQuestion = [[Values sharedValues]arrayQuestions];
}


#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.arrayCategorQuestion.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellQuestion" forIndexPath:indexPath];
    
    _strTableViewCell = [_arrayCategorQuestion objectAtIndex:indexPath.row];
    cell.textLabel.text = _strTableViewCell;
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
}


-(NSMutableArray*) returnArrayQuestions{
    return 0;
}


@end
