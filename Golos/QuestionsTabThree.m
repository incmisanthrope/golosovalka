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
    _userChoiseQuestion = (NSInteger *)[questionTabTwo returnChoiseQuestion];
    
}



- (IBAction)answerButton:(id)sender {
}
@end
