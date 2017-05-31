//
//  TabFourViewController.h
//  Golos
//
//  Created by Gleb R on 26.05.17.
//  Copyright © 2017 IncMisanthrope. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "Entity+CoreDataProperties.h"

@interface AddItemView : UIViewController
- (IBAction)addItemButton:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *textCategory;
@property (weak, nonatomic) IBOutlet UITextField *textQuestion;
@property (weak, nonatomic) IBOutlet UITextField *textAnswer;
- (IBAction)saveButton:(id)sender;

@end
