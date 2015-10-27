//
//  DetailViewController.m
//  L1ByJSON
//
//  Created by Mindstix Software on 23/09/15.
//  Copyright (c) 2015 Mindstix Software. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()
@property (weak, nonatomic) IBOutlet UILabel *lblName;
@property (weak, nonatomic) IBOutlet UIImageView *img;
@property (weak, nonatomic) IBOutlet UILabel *lblDesc;
@property (weak, nonatomic) IBOutlet UILabel *lblPrice;
@property (weak, nonatomic) IBOutlet UILabel *lblRating;

@end

@implementation DetailViewController
@synthesize detailsList;

- (void)viewDidLoad {
    [super viewDidLoad];
    self.lblName.text = [detailsList objectForKey:@"name"];
    self.img.image = [UIImage imageNamed:[detailsList objectForKey:@"image"]];
    self.lblDesc.text = [detailsList objectForKey:@"description"];
    self.lblPrice.text = [detailsList objectForKey:@"price"];
    self.lblRating.text = [detailsList objectForKey:@"rating"];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
