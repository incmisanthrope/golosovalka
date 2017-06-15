//
//  TabTwoTableViewController.h
//  Golos
//
//  Created by Gleb R on 26.05.17.
//  Copyright © 2017 IncMisanthrope. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TabEditCategory : UITableViewController

- (IBAction)longPressEditCategory:(id)sender;
@property (strong, nonatomic) NSString *questionTAbName;
@property (strong, nonatomic) NSMutableArray *arrayCategory;
@property (assign, nonatomic) NSInteger *idCategoryInEdit;
@property (strong, nonatomic) NSArray *arrayCore;

@end
