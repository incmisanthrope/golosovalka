//
//  GAddQuestionViewController.m
//  Golos
//
//  Created by Gleb R on 02.06.17.
//  Copyright © 2017 IncMisanthrope. All rights reserved.
//

#import "GAddQuestionViewController.h"
#import "GQuestionTableViewController.h"
#import "TabEditCategory.h"
#import "Values.h"

@interface GAddQuestionViewController ()
@property(assign, nonatomic) NSInteger *categor;


@end

@implementation GAddQuestionViewController


NSInteger *categor;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)saveQuestionButton:(id)sender {
     NSString* idCat = [[Values sharedValues]category];
    [[Values sharedValues]addItmeInArrayQuestion:idCat];
}


@end
