//
//  ProfileViewController.m
//  ProfileDemo
//
//  Created by Simon on 30/3/14.
//  Copyright (c) 2014 Appcoda. All rights reserved.
//
#import <QuartzCore/QuartzCore.h>
#import "ProfileViewController.h"

@interface ProfileViewController ()

@end

@implementation ProfileViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.profileImageVieW.layer.cornerRadius = self.profileImageVieW.frame.size.width / 2;
    self.profileImageVieW.clipsToBounds = YES;
    self.profileImageVieW.layer.borderWidth = 3.0f;
    self.profileImageVieW.layer.borderColor = [UIColor blackColor].CGColor;
    self.profileImageVieW.layer.borderColor =[[UIColor colorWithWhite:1.0f alpha:0.5f] CGColor];
    
    _profileButtonVieW.layer.cornerRadius = 2; // this value vary as per your desire
    _profileButtonVieW.clipsToBounds = YES;
    
    //UIView *lineView = [[UIView alloc] initWithFrame:CGRectMake(9, 318, self.view.bounds.size.width, .5)];
  // lineView.backgroundColor = [UIColor grayColor];
  //  lineView.backgroundColor = [UIColor colorWithRed:200.0/255.0 green:200.0/255.0 blue:200.0/255.0 alpha:10.0f];
  //  [self.view addSubview:lineView];
    
   // _innerVieW.layer.borderWidth = 1;
   // _innerVieW.layer.borderColor = [[UIColor whiteColor] CGColor];
    
   // [_innerVieW.layer setCornerRadius:30.0f];
    
    // border
    [_innerVieW.layer setBorderColor:[UIColor lightGrayColor].CGColor];
   //[_innerVieW.layer setBorderWidth:.1];
    
    // drop shadow
   [_innerVieW.layer setShadowColor:[UIColor blackColor].CGColor];
   [_innerVieW.layer setShadowOpacity:0.2];
    [_innerVieW.layer setShadowRadius:.7];
    [_innerVieW.layer setShadowOffset:CGSizeMake(1.0, 1.0)];
    
    
    //_View.layer.shadowColor = [UIColor purpleColor].CGColor;
   // _View.layer.shadowOffset = CGSizeMake(5, 5);
   // _View.layer.shadowOpacity = 1;
   // _View.layer.shadowRadius = 1.0;
    //[lineView release];
    
   // UIView *lineView2 = [[UIView alloc] initWithFrame:CGRectMake(9, 337, self.view.bounds.size.width/2, 1)];
   // lineView2.backgroundColor = [UIColor grayColor];
    //self.view.layer.backgroundColor = [UIColor orangeColor].CGColor;
    //self.view.layer.cornerRadius = 20.0;
    //self.view.layer.frame = CGRectInset(self.view.layer.frame, 20, 20);
    
    //_profileLineLabel.clipsToBounds = YES;
    
    //CALayer *rightBorder = [CALayer layer];
   // rightBorder.borderColor = [UIColor darkGrayColor].CGColor;
    //rightBorder.borderWidth = 1;
    //rightBorder.frame = CGRectMake(-1, -1, CGRectGetWidth(_profileLineLabel.frame), CGRectGetHeight(UIScrollView.frame)+2);
    
   // [_profileLineLabel.layer addSublayer:rightBorder];
    
    //[self.view addSubview:lineView2];
    
   // CGFloat borderWidth = 2.0f;
    
//    self.profileImageVieW.layer.borderColor = [[UIColor colorWithWhite:1.0f alpha:0.5f] CGColor];
//    CALayer *sub = [CALayer new];
//   //self.profileImageVieW.layer.frame = CGRectInset(self.bounds, 4, 4);
//    sub.backgroundColor = [UIColor redColor].CGColor;
//    [self.profileImageVieW.layer addSublayer:sub];
//    
//    _backgroundImageVieW.alpha = 0.5f;
////    
//    _profileImageVieW.backgroundColor = [UIColor clearColor];
//    _profileImageVieW.layer.borderColor = [UIColor whiteColor].CGColor;
//    _profileImageVieW.layer.borderWidth = 2.0f;
//    [_profileImageVieW addSubview:_backgroundImageVieW];
//
}


//- (void)didReceiveMemoryWarning
//{
  //  [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
//}

@end
