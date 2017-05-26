//
//  tabFourViewController.m
//  Golos
//
//  Created by Gleb R on 23.05.17.
//  Copyright © 2017 IncMisanthrope. All rights reserved.
//

#import "tabFourViewController.h"
#import "Values.h"

@interface tabFourViewController ()

@end

@implementation tabFourViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UITapGestureRecognizer * handleTap = [[UITapGestureRecognizer alloc] initWithTarget:(self) action:@selector(handleEndEditing)];
    [self.view addGestureRecognizer:handleTap];
 
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:YES];
}


- (void) handleEndEditing {
    [self.textCategory resignFirstResponder];
    [self.textQu resignFirstResponder];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)saveBTN:(id)sender {
    Values *valu = [Values new];
    [valu saveQ:_textQu saveC:_textCategory];
}

- (IBAction)saveOnlyCategory:(id)sender {
}

- (IBAction)saveOnlyVopros:(id)sender {
}
@end
