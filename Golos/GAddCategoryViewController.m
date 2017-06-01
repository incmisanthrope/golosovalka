//
//  GAddCategoryViewController.m
//  Golos
//
//  Created by Gleb R on 01.06.17.
//  Copyright © 2017 IncMisanthrope. All rights reserved.
//

#import "GAddCategoryViewController.h"
#import "Values.h"

@interface GAddCategoryViewController ()

@end

@implementation GAddCategoryViewController

NSString* str;

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}



- (IBAction)saveNewCategory:(id)sender {
    Values *value = [Values new];
    [value addItemInArrayCategory:self.textCategorName.text];
}

- (IBAction)alertViewButton:(id)sender {
   
}
@end
