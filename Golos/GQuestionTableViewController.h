//
//  GQuestionTableViewController.h
//  Golos
//
//  Created by Gleb R on 01.06.17.
//  Copyright © 2017 IncMisanthrope. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GQuestionTableViewController : UITableViewController
@property (assign, nonatomic) NSInteger *choiseQuestion, *category;
@property (strong, nonatomic) NSString *idCategoryInTab, *idQuestion;
@property (strong, nonatomic) NSMutableArray *arrayQuestions;

@end
