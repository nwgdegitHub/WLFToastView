//
//  WLFToastView.m
//  WLFApp
//
//  Created by udc on 2019/1/21.
//  Copyright © 2019年 xxx. All rights reserved.
//
#import "WLFToastView.h"
#import "WHToast.h"

#define WLFToastOriginY ([[UIScreen mainScreen] bounds].size.height)*0.8

#define WLFToastDuration 1.5

@implementation WLFToastView

+(void)showToastWithMessage:(NSString *)message
{
    dispatch_async(dispatch_get_main_queue(), ^{
        
        [WHToast showMessage:message originY:WLFToastOriginY duration:WLFToastDuration finishHandler:^{
            
        }];
    });
    
    //TODO:-[UIApplication statusBarFrame] must be used from main thread only
}

@end
