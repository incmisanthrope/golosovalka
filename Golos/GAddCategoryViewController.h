//
//  GAddCategoryViewController.h
//  Golos
//
//  Created by Gleb R on 01.06.17.
//  Copyright © 2017 IncMisanthrope. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GAddCategoryViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *textCategorName;
- (IBAction)saveNewCategory:(id)sender;
- (IBAction)alertViewButton:(id)sender;

@end
