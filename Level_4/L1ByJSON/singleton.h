//
//  singleton.h
//  L1ByJSON
//
//  Created by Mindstix Software on 28/09/15.
//  Copyright (c) 2015 Mindstix Software. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface singleton : NSObject{

NSMutableArray *cartArray;
}

@property (strong, nonatomic) NSMutableArray *cartArray;
+ (id) sharedInstance;



@end
