//
//  QuestionsTabThree.h
//  Golos
//
//  Created by Gleb R on 29.05.17.
//  Copyright © 2017 IncMisanthrope. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QuestionsTabThree : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *questionTextLable;
@property (weak, nonatomic) IBOutlet UIPickerView *answerPicker;
- (IBAction)answerButton:(id)sender;

@end
