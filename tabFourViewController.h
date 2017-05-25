//
//  tabFourViewController.h
//  Golos
//
//  Created by Gleb R on 23.05.17.
//  Copyright © 2017 IncMisanthrope. All rights reserved.
//

#import "ViewController.h"

@interface tabFourViewController : ViewController
@property (weak, nonatomic) IBOutlet UITextField *textCategory;
@property (weak, nonatomic) IBOutlet UITextField *textQu;
- (IBAction)saveBTN:(id)sender;

- (IBAction)saveOnlyCategory:(id)sender;
- (IBAction)saveOnlyVopros:(id)sender;

@end
