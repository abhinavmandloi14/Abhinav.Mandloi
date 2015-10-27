//
//  thirdTableViewController.m
//  L1ByJSON
//
//  Created by Mindstix Software on 23/09/15.
//  Copyright (c) 2015 Mindstix Software. All rights reserved.
//

#import "thirdTableViewController.h"
#import "DetailViewController.h"

@interface thirdTableViewController ()

//@property NSDictionary *itemList;
@property NSMutableArray *itemArray;

@end

@implementation thirdTableViewController


- (void)viewDidLoad {
    [super viewDidLoad];
   /*
    NSString *path = [[NSBundle mainBundle]pathForResource:@"product" ofType:@"json"];
    NSString *jsonFile = [[NSString alloc] initWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];
    _itemList = [NSJSONSerialization JSONObjectWithData:[jsonFile dataUsingEncoding:NSUTF8StringEncoding]options:kNilOptions error:nil];*/

    NSMutableArray *arrayTwo = [_itemList objectForKey:@"product"];
    NSDictionary *dictionaryTwo;
    NSString * stringTwo;

    _itemArray = [[NSMutableArray alloc]init];
    for (int i = 0; i < arrayTwo.count; ++i) {
        dictionaryTwo = [arrayTwo objectAtIndex:i];
        stringTwo = [dictionaryTwo objectForKey:@"name"];
        
        [_itemArray addObject:stringTwo];
       // NSLog(@"%@",_itemArray);
    }
    
    
    
    [self.tableView reloadData];
    
}

/*
- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}
 */

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return [self.itemArray count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *ThirdCell = @"ThirdCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ThirdCell forIndexPath:indexPath];
    cell.textLabel.text = _itemArray[indexPath.row];
    
    // Configure the cell...
    
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


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if([segue.identifier isEqualToString:@"detailsViewSegue"])
    {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        DetailViewController *detailsViewController = segue.destinationViewController;
        NSMutableArray *array2 = [_itemList objectForKey:@"product"];
        NSDictionary *dic = [array2 objectAtIndex:indexPath.row];
        detailsViewController.detailsList = dic;
        
    }
}


@end
