//
//  TabViewController.m
//  ProfileDemo
//
//  Created by Mindstix Software on 09/10/15.
//  Copyright (c) 2015 Appcoda. All rights reserved.
//

#import "TabViewController.h"

@interface TabViewController ()

@end

@implementation TabViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    
    self.ProfileImageVieW.layer.cornerRadius = self.ProfileImageVieW.frame.size.width / 2;
    self.ProfileImageVieW.clipsToBounds = YES;
    self.ProfileImageVieW.layer.borderWidth = 3.0f;
    self.ProfileImageVieW.layer.borderColor = [UIColor blackColor].CGColor;
    self.ProfileImageVieW.layer.borderColor =[[UIColor colorWithWhite:1.0f alpha:0.5f] CGColor];
    
    _ProfileButtonVieW.layer.cornerRadius = 2; // this value vary as per your desire
    _ProfileButtonVieW.clipsToBounds = YES;
    
    [_TabVieW.layer setBorderColor:[UIColor lightGrayColor].CGColor];
    //[_innerVieW.layer setBorderWidth:.1];
    
    // drop shadow
    [_TabVieW.layer setShadowColor:[UIColor blackColor].CGColor];
    [_TabVieW.layer setShadowOpacity:0.2];
    [_TabVieW.layer setShadowRadius:.7];
    [_TabVieW.layer setShadowOffset:CGSizeMake(1.0, 1.0)];
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
