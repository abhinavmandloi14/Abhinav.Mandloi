//
//  ProfileNameViewController.m
//  ProfileDemo
//
//  Created by Mindstix Software on 08/10/15.
//  Copyright (c) 2015 Appcoda. All rights reserved.
//




#if TARGET_IPHONE_SIMULATOR

static const char *fakeCarrier;

#import <objc/runtime.h>
#import "ProfileNameViewController.h"

typedef struct {
    char itemIsEnabled[23];
    char timeString[64];
    int gsmSignalStrengthRaw;
    int gsmSignalStrengthBars;
    char serviceString[100];
    // ...
} StatusBarData;

typedef struct {
    char itemIsEnabled[24];
    char timeString[64];
    int gsmSignalStrengthRaw;
    int gsmSignalStrengthBars;
    char serviceString[100];
    // ...
} StatusBarData_6;

typedef struct {
    char itemIsEnabled[25];
    char timeString[64];
    int gsmSignalStrengthRaw;
    int gsmSignalStrengthBars;
    char serviceString[100];
    // ...
} StatusBarData_7;



@interface ProfileNameViewController ()

@end

@implementation ProfileNameViewController

+ (void) load
{
    fakeCarrier = getenv("FAKE_CARRIER");
    if (!fakeCarrier)
    {
        NSLog(@"You must set the FAKE_CARRIER environment variable");
        return;
    }
    
    BOOL __block success = NO;
    Class UIStatusBarComposedData = objc_getClass("UIStatusBarComposedData");
    SEL selector = NSSelectorFromString(@"rawData");
    Method method = class_getInstanceMethod(UIStatusBarComposedData, selector);
    NSDictionary *statusBarDataInfo = @{ @"^{?=[23c][64c]ii[100c]": @"fake_rawData",
                                         @"^{?=[24c][64c]ii[100c]": @"fake_rawData_6",
                                         @"^{?=[25c][64c]ii[100c]": @"fake_rawData_7" };
    [statusBarDataInfo enumerateKeysAndObjectsUsingBlock:^(NSString *statusBarDataTypeEncoding, NSString *fakeSelectorString, BOOL *stop) {
        if (method && [@(method_getTypeEncoding(method)) hasPrefix:statusBarDataTypeEncoding])
        {
            SEL fakeSelector = NSSelectorFromString(fakeSelectorString);
            Method fakeMethod = class_getInstanceMethod(self, fakeSelector);
            success = class_addMethod(UIStatusBarComposedData, fakeSelector, method_getImplementation(fakeMethod), method_getTypeEncoding(fakeMethod));
            fakeMethod = class_getInstanceMethod(UIStatusBarComposedData, fakeSelector);
            method_exchangeImplementations(method, fakeMethod);
        }
    }];
    
    if (success)
        NSLog(@"Using \"%s\" fake carrier", fakeCarrier);
    else
        NSLog(@"XCDFakeCarrier failed to initialize");
}

- (StatusBarData *) fake_rawData
{
    StatusBarData *rawData = [self fake_rawData];
    strlcpy(rawData->serviceString, fakeCarrier, sizeof(rawData->serviceString));
    return rawData;
}

- (StatusBarData_6 *) fake_rawData_6
{
    StatusBarData_6 *rawData = [self fake_rawData_6];
    strlcpy(rawData->serviceString, fakeCarrier, sizeof(rawData->serviceString));
    return rawData;
}

- (StatusBarData_7 *) fake_rawData_7
{
    StatusBarData_7 *rawData = [self fake_rawData_7];
    strlcpy(rawData->serviceString, fakeCarrier, sizeof(rawData->serviceString));
    return rawData;
}

@end

#endif

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


