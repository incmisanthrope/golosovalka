//
//  TableOne.h
//  Golos
//
//  Created by Gleb R on 17.05.17.
//  Copyright © 2017 IncMisanthrope. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QuestionsTabOne : UITableViewController

@property(assign, nonatomic) NSInteger *userChoiseCategory;
@property(strong, nonatomic) NSMutableArray *arrayTableCategory;

-(NSUInteger) returnChoiseCategory;

-(NSMutableArray*) returnCategoryArray;

@end
