//
//  secondTableViewController.m
//  L1ByJSON
//
//  Created by Mindstix Software on 23/09/15.
//  Copyright (c) 2015 Mindstix Software. All rights reserved.
//

#import "secondTableViewController.h"
#import "thirdTableViewController.h"

@interface secondTableViewController ()

@property NSDictionary *productList;
@property NSMutableArray *productarray;


@end

@implementation secondTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  
    NSString *path = [[NSBundle mainBundle]pathForResource:@"productjson" ofType:@"json"];
    NSString *jsonFile = [[NSString alloc] initWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];
    _productList = [NSJSONSerialization JSONObjectWithData:[jsonFile dataUsingEncoding:NSUTF8StringEncoding]options:kNilOptions error:nil];
    NSMutableArray *arrayTwo = [_productList objectForKey:@"category"];
    NSDictionary *dictionaryTwo;
    NSString * stringTwo;
    _productarray = [[NSMutableArray alloc]init];
    for (int i = 0; i < arrayTwo.count; ++i) {
        dictionaryTwo = [arrayTwo objectAtIndex:i];
        stringTwo = [dictionaryTwo objectForKey:@"name"];
        [_productarray addObject:stringTwo];
    }
    
    
    
    [self.tableView reloadData];
  
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return [_productarray count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *Cell = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:Cell forIndexPath:indexPath];
    cell.textLabel.text = _productarray[indexPath.row];
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


// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}


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
    if([segue.identifier isEqualToString:@"categoryDetail"])
    {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        thirdTableViewController *destViewController = segue.destinationViewController;
        NSMutableArray *array2 = [_productList objectForKey:@"category"];
        destViewController.itemList = [array2 objectAtIndex:indexPath.row];
       // destViewController.itemArray = [_productarray objectAtIndex:indexPath.row];
       
        
    }
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}


@end
