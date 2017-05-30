//
//  TabFourViewController.m
//  Golos
//
//  Created by Gleb R on 26.05.17.
//  Copyright © 2017 IncMisanthrope. All rights reserved.
//

#import "AddItemView.h"
#import "AppDelegate.h"

@interface AddItemView ()

@end

@implementation AddItemView

- (void)viewDidLoad {
    [super viewDidLoad];
    UITapGestureRecognizer * handleTap = [[UITapGestureRecognizer alloc] initWithTarget:(self) action:@selector(handleEndEditing)];
    [self.view addGestureRecognizer:handleTap];
    
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addItemButton:(id)sender {

    UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:@"Add awesome shit" delegate:self
                                                    cancelButtonTitle:@"Cancel"
                                               destructiveButtonTitle:nil //@"Delete"
                                                    otherButtonTitles:@"Add Category", @"Add Question", @"Add Answer", nil];
    actionSheet.tag = 0;
    [actionSheet showInView:self.view];
}

-(void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex{
  
    switch (actionSheet.tag) {
        case 0:
            switch (buttonIndex) {
                case 0:
                    NSLog(@"Add Category");
                    break;
                case 1:
                    NSLog(@"Add Question");
                    break;
                case 2:
                    NSLog(@"Add Answer");
                    break;
                    
                default:
                    break;
            }
            break;
    }
    if (buttonIndex == 0) {
        UIAlertView* addCategory = [[UIAlertView alloc]initWithTitle:@"Add Category"
                                                             message:@"Input Category Name"
                                                            delegate:self cancelButtonTitle:@"Cancel"
                                                   otherButtonTitles:@"Add", nil];
        addCategory.alertViewStyle = UIAlertViewStylePlainTextInput;
        [addCategory show];
    } else if(buttonIndex == 1){
        UIAlertView* addCategory = [[UIAlertView alloc]initWithTitle:@"Add Category"
                                                             message:@"Input Question Name"
                                                            delegate:self cancelButtonTitle:@"Cancel"
                                                   otherButtonTitles:@"Add", nil];
        addCategory.alertViewStyle = UIAlertViewStylePlainTextInput;
        [addCategory show];
    } else if (buttonIndex == 2) {
        UIAlertView* addCategory = [[UIAlertView alloc]initWithTitle:@"Add Category"
                                                             message:@"Input Answer Name"
                                                            delegate:self cancelButtonTitle:@"Cancel"
                                                   otherButtonTitles:@"Add", nil];
        addCategory.alertViewStyle = UIAlertViewStylePlainTextInput;
        [addCategory show];
    }
    
}
@end
