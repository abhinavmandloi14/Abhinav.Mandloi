//
//  fourthViewController.m
//  L1ByJSON
//
//  Created by Mindstix Software on 28/09/15.
//  Copyright (c) 2015 Mindstix Software. All rights reserved.
//

#import "singleton.h"
#import "fourthViewController.h"

@interface fourthViewController ()

@property (weak, nonatomic) IBOutlet UILabel *lbProductPrice;
@property NSMutableArray *product;
@property (weak, nonatomic) IBOutlet UILabel *lbProductName;
@property NSMutableArray *price;
//@property (weak, nonatomic) IBOutlet UILabel *lbProductName;
//@property UILabel *lbProductName;
//@property UILabel *lbProductPrice;
@property (weak, nonatomic) IBOutlet UILabel *lbProductTotal;

@property double total;
@end

@implementation fourthViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"did load");
    singleton *sharedInstance = [singleton sharedInstance];
    NSDictionary *dictionary = [[NSDictionary alloc]init];
    _product = [[NSMutableArray alloc]init];
    _price = [[NSMutableArray alloc]init];
    _total = 0;
    
    for (int i = 0; i < sharedInstance.cartArray.count; i++) {
        dictionary = [sharedInstance.cartArray objectAtIndex:i];
        [_product addObject:[dictionary objectForKey:@"name"]];
        [_price addObject:[dictionary objectForKey:@"price"]];
        
        _total = _total + [[dictionary objectForKey:@"price"]doubleValue];
        NSLog(@"Total is: %f",_total);
        _lbProductTotal.text = [NSString stringWithFormat:@"%f",_total];
        
    }
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    //#warning Potentially incomplete method implementation.
    // Return the number of sections.
    NSLog(@"sections");
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    //#warning Incomplete method implementation.
    // Return the number of rows in the section.
    NSLog(@"rows");
    return [self.product count];
    
}

-(UITableViewCell*)tableView:(UITableView*)tableView cellForRowAtIndexPath:(NSIndexPath*)indexPath{
    NSLog(@"cell");
    static NSString *checkOutCell = @"checkOutCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:checkOutCell forIndexPath:indexPath];
    
    _lbProductName = (UILabel*) [cell viewWithTag:1];
    _lbProductPrice = (UILabel*) [cell viewWithTag:2];
    
    _lbProductName.text = _product[indexPath.row];
    _lbProductPrice.text = _price[indexPath.row];
    return cell;
    
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
