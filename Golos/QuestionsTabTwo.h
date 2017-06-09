//
//  TableTwo.h
//  Golos
//
//  Created by Gleb R on 18.05.17.
//  Copyright © 2017 IncMisanthrope. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QuestionsTabTwo : UITableViewController

@property (assign, nonatomic) NSUInteger *userChoiseQuestion, *userChoiseAnswer, *userChoiseCategory;
@property (strong, nonatomic) NSMutableArray *arrayCategorQuestion, *arrayAnswerOne,*arrayAnswerTwo,*arrayAnswerThree,*arrayAnswerFour,*arrayAnswerFive;
@property (strong, nonatomic) NSString *stringAnswerView;

@end
