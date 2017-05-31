//
//  TabTwoTableViewController.m
//  Golos
//
//  Created by Gleb R on 26.05.17.
//  Copyright © 2017 IncMisanthrope. All rights reserved.
//

#import "TabEditCategory.h"

@interface TabEditCategory ()


@end

@implementation TabEditCategory

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:YES];
    
}



#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell3" forIndexPath:indexPath];
    
    return cell;
}


- (IBAction)addCategory:(id)sender {
    UIAlertController * alert = [UIAlertController
                                 alertControllerWithTitle:@"SW"
                                 message:@"Выбери сторону"
                                 preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* yesButton = [UIAlertAction
                                actionWithTitle:@"Светлая"
                                style:UIAlertActionStyleDefault
                                handler:^(UIAlertAction * action) {
                                    NSLog(@"Light side");
                                }];
    
    UIAlertAction* noButton = [UIAlertAction
                               actionWithTitle:@"Темная"
                               style:UIAlertActionStyleDefault
                               handler:^(UIAlertAction * action) {
                                   NSLog(@"Dark side");
                               }];
    
    [alert addAction:yesButton];
    [alert addAction:noButton];
    
    [self presentViewController:alert animated:YES completion:nil];
    
}
@end
