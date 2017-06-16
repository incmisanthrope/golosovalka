//
//  GQuestionTableViewController.h
//  Golos
//
//  Created by Gleb R on 01.06.17.
//  Copyright © 2017 IncMisanthrope. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Questions+CoreDataProperties.h"

@interface GQuestionTableViewController : UITableViewController

@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (assign, nonatomic) NSInteger *choiseQuestion, *category;
@property (strong, nonatomic) NSString *idCategoryInTab, *idQuestion;
@property (strong, nonatomic) NSMutableArray *arrayQuestions;

@property (weak, nonatomic) Questions *questionItem;

@end
