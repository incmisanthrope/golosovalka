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
- (IBAction)saveCategoryButton:(UIButton *)sender;

@end

@implementation GAddCategoryViewController


NSString* str;

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)saveCategoryButton:(UIButton *)sender {
    [[Values sharedValues]addObject:self.textCategorName.text];
}
@end
