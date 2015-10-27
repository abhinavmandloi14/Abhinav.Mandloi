//
//  singleton.m
//  L1ByJSON
//
//  Created by Mindstix Software on 28/09/15.
//  Copyright (c) 2015 Mindstix Software. All rights reserved.
//

#import "singleton.h"

@implementation singleton

@synthesize cartArray;

+ (id)sharedInstance {
    static singleton *sharedMyInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedMyInstance = [[self alloc] init];
    });
    return sharedMyInstance;
}

- (id)init {
    if (self = [super init]) {
        cartArray = [[NSMutableArray alloc] init];
    }
    return self;
}

@end
