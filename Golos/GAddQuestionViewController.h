//
//  GAddQuestionViewController.h
//  Golos
//
//  Created by Gleb R on 02.06.17.
//  Copyright © 2017 IncMisanthrope. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Questions+CoreDataProperties.h"
#import <CoreData/CoreData.h>


@interface GAddQuestionViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *textQuestion;
- (IBAction)saveQuestionButton:(id)sender;


@end
