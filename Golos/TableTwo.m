//
//  TableTwo.m
//  Golos
//
//  Created by Gleb R on 18.05.17.
//  Copyright © 2017 IncMisanthrope. All rights reserved.
//

#import "TableTwo.h"
#import "TableOne.h"

//

@interface TableTwo ()
@property (strong, nonatomic) NSMutableArray *categorOne, *categorTwo, *categorTr, *categorFou, *categorFiv;
@property (strong, nonatomic) NSString *aStr;
@property NSInteger *var;
@end

@implementation TableTwo

NSInteger *var;


- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:YES];
    self.categorOne = [[NSMutableArray alloc] initWithObjects:@"catOne_1", @"catOne_2", @"catOne_3",@"catOne_4",@"catOne_5", nil];
    self.categorTwo = [[NSMutableArray alloc] initWithObjects:@"catTwo_1", @"catTwo_2", @"catTwo_3",@"catTwo_4",@"catTwo_5", nil];
    self.categorTr  = [[NSMutableArray alloc] initWithObjects:@"1", @"2", @"3",@"4",@"5", nil];
    self.categorFou = [[NSMutableArray alloc] initWithObjects:@"1", @"2", @"3",@"4",@"5", nil];
    self.categorFiv = [[NSMutableArray alloc] initWithObjects:@"1", @"2", @"3",@"4",@"5", nil];


    TableOne *tabOne = [TableOne new];

    var = [tabOne returnUserChoise];
    NSLog(@"%ld",(long) var);
    
//    switch ((long) var) {
//        case 0:
//            NSLog(@"switch 0 tabTwo");
//            break;
//            
//        default:
//            break;
//    }
    
    
}

#pragma mark - Table view data source

//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
////#warning Incomplete implementation, return the number of sections
//    return 0;
//}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//#warning Incomplete implementation, return the number of rows
    return self.categorOne.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell2" forIndexPath:indexPath];
    
//    NSString *aStr;
    
    switch ((long) var) {
        case 0:
            NSLog(@"table view TWO switch work");
            _aStr = [_categorOne objectAtIndex:indexPath.row];
            break;
        
        case 1:
            _aStr = [_categorTwo objectAtIndex:indexPath.row];
            break;
    }
    

    cell.textLabel.text = _aStr;
    
    return cell;
}

 
 
/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
