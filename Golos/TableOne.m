//
//  TableOne.m
//  Golos
//
//  Created by Gleb R on 17.05.17.
//  Copyright © 2017 IncMisanthrope. All rights reserved.
//

#import "TableOne.h"
#import "TableTwo.h"

@interface TableOne ()

@property (strong , nonatomic) NSMutableArray *arrCell, *arrPlist;
@property (strong, nonatomic) NSArray *array;

@end

@implementation TableOne
NSInteger *vartabone;


- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:YES];
    self.arrCell = [[NSMutableArray alloc] initWithObjects:@"categor 1", @"categor 2", @"categor 3",@"categor 4",@"categor 5", nil];
//    NSDictionary *dictionary = [NSDictionary dictionaryWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"data" ofType:@"plist"]];
//    NSLog(@"dictionary = %@", dictionary);
//    
//    NSString *path = [[NSBundle mainBundle] pathForResource:@"data" ofType:@"plist"];
//    NSArray *array =  [dictionary objectForKey:@"qu"];
//    
//    NSMutableArray *arrPlist = [[NSMutableArray alloc] initWithContentsOfFile:path];
//    
//    NSLog(@"array = %@", array);
//    NSLog(@"array = %@", arrPlist);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//#warning Incomplete implementation, return the number of sections
//    return 0;
//}
//
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return  self.arrCell.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
        
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell1" forIndexPath:indexPath];
    
//    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
//    NSString *documentsDirectory = [paths objectAtIndex:0];
//    
//    NSString *recentFilePath = [documentsDirectory stringByAppendingPathComponent:@"data.plist"];
//    NSArray *history = [NSArray arrayWithContentsOfFile:recentFilePath];
    
    

    NSString *aaaaaaaStr = [_arrCell objectAtIndex:indexPath.row];
    cell.textLabel.text = aaaaaaaStr;
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    NSLog(@"%ld", (long)indexPath.row);
    
        switch (indexPath.row) {
        case 0:
            NSLog(@"case 0 selected");
//                [tabTwo choiseVarOne:indexPath.item];
                vartabone = indexPath.row;
                NSLog(@"value swotch return, %ld",(long) vartabone);
            break;
            case 1:
            NSLog(@"case 1 selected");
//                [tabTwo choiseVarOne:indexPath.item];
                vartabone = indexPath.row;
                NSLog(@"value swotch return, %ld",(long) vartabone);
            break;
            case 2:
            NSLog(@"case 2 selected");
                vartabone = indexPath.row;
                NSLog(@"value swotch return, %ld",(long) vartabone);
                break;
        default:
            break;
    }
  
}

-(NSInteger) returnUserChoise{
    return vartabone;
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
