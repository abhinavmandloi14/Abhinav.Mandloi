//
//  FirstViewController.h
//  NewCremaApp
//
//  Created by Mindstix Software on 25/09/15.
//  Copyright (c) 2015 Mindstix Software. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController<UIImagePickerControllerDelegate,UINavigationControllerDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

- (IBAction)take_photo:(id)sender;
- (IBAction)select_photo:(id)sender;

@end
