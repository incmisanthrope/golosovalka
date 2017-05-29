//
//  QuestionsTabThree.m
//  Golos
//
//  Created by Gleb R on 29.05.17.
//  Copyright © 2017 IncMisanthrope. All rights reserved.
//

#import "QuestionsTabThree.h"
#import "QuestionsTabTwo.h"

@interface QuestionsTabThree ()

@property (strong, nonatomic) NSArray *arrayAnswerOne,*arrayAnswerTwo,*arrayAnswerThree,*arrayAnswerFour,*arrayAnswerFive;
@property (assign, nonatomic) NSInteger *userChoiseAnswer, *userChoiseQuestion;
@property (strong, nonatomic) NSString *stringAnswerView;

@end

@implementation QuestionsTabThree

NSInteger *userChoiseAnswer;

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:YES];
    self.arrayAnswerOne = @[@"1answer_1", @"answer_2", @"answer_3",@"answer_4",@"answer_5"];
    self.arrayAnswerTwo = @[@"2answer_1", @"answer_2", @"answer_3",@"answer_4",@"answer_5"];
    self.arrayAnswerThree = @[@"3answer_1", @"answer_2", @"answer_3",@"answer_4",@"answer_5"];
    self.arrayAnswerFour = @[@"4answer_1", @"answer_2", @"answer_3",@"answer_4",@"answer_5"];
    self.arrayAnswerFive = @[@"5answer_1", @"answer_2", @"answer_3",@"answer_4",@"answer_5"];
    
    QuestionsTabTwo *questionTabTwo = [QuestionsTabTwo new];
    _userChoiseQuestion = [questionTabTwo returnChoiseQuestion];
    
}

#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _arrayAnswerOne.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellAnswer" forIndexPath:indexPath];
    
    switch ((long) _userChoiseQuestion) {
        case 0:
            _stringAnswerView = [_arrayAnswerOne objectAtIndex:indexPath.row];
            break;
            
        case 1:
            _stringAnswerView = [_arrayAnswerTwo objectAtIndex:indexPath.row];
            break;
        case 2:
            _stringAnswerView = [_arrayAnswerThree objectAtIndex:indexPath.row];
            break;
        case 3:
            _stringAnswerView = [_arrayAnswerFour objectAtIndex:indexPath.row];
            break;
        case 4:
            _stringAnswerView = [_arrayAnswerFive objectAtIndex:indexPath.row];
            break;
    }
    
    
    cell.textLabel.text = _stringAnswerView;
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    switch (indexPath.row) {
        case 0:
            userChoiseAnswer = indexPath.row;
            break;
        case 1:
            userChoiseAnswer = indexPath.row;
            break;
        case 2:
            userChoiseAnswer = indexPath.row;
            break;
        case 3:
            userChoiseAnswer = indexPath.row;
            break;
        case 4:
            userChoiseAnswer = indexPath.row;
            break;
            
        default:
            break;
    }
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
