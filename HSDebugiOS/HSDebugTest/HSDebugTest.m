//
//  HSDebugTest.m
//  HSDebugiOS
//
//  Created by dengyouhua on 17/3/22.
//  Copyright © 2017年 cc | ccworld1000@gmail.com. All rights reserved.
//

#import "HSDebugTest.h"
#import <HSDebug.h>

@implementation HSDebugTest

+ (void) logTest {
    [HSDebug debugLogSwitch: YES];
    
    HSDebugWarningPrint(@"cc warning");
    HSDebugErrorPrint(@"cc error");
    HSDebugPrint(@"cc log");
}

@end
