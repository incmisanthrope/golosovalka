//
//  TableTwo.h
//  Golos
//
//  Created by Gleb R on 18.05.17.
//  Copyright © 2017 IncMisanthrope. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QuestionsTabTwo : UITableViewController

@property (assign, nonatomic) NSUInteger *userChoiseQuestion;
@property (assign, nonatomic) NSUInteger *userChoiseCategory;

-(NSUInteger) returnChoiseQuestion;

@end
