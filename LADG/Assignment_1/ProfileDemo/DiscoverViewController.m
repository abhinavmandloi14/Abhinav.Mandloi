//
//  DiscoverViewController.m
//  ProfileDemo
//
//  Created by Mindstix Software on 09/10/15.
//  Copyright (c) 2015 Appcoda. All rights reserved.
//

#import "DiscoverViewController.h"

@interface DiscoverViewController ()

@end

@implementation DiscoverViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [_innerVieW.layer setBorderColor:[UIColor lightGrayColor].CGColor];
    //[_innerVieW.layer setBorderWidth:.1];
    
    // drop shadow
    [_innerVieW.layer setShadowColor:[UIColor blackColor].CGColor];
    [_innerVieW.layer setShadowOpacity:0.2];
    [_innerVieW.layer setShadowRadius:.7];
    [_innerVieW.layer setShadowOffset:CGSizeMake(1.0, 1.0)];
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
