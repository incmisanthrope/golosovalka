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

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
