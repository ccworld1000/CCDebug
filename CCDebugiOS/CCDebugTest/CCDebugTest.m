//
//  CCDebugTest.m
//  CCDebugiOS
//
//  Created by dengyouhua on 17/3/22.
//  Copyright © 2017年 cc | ccworld1000@gmail.com. All rights reserved.
//

#import "CCDebugTest.h"
#import <CCDebug.h>

@implementation CCDebugTest

+ (void) logTest {
    [CCDebug debugLogSwitch: YES];
    
    [CCDebug enableNSLogPrefix: NO];
    
    /**
     *  colorRGBEnable | [XcodeColors installation] https://github.com/robbiehanson/XcodeColors
     *  screenshot https://github.com/ccworld1000/CCDebug
     *  @param showColor showColor description
     */
    [CCDebug colorRGBEnable: YES];  // YES if support XcodeColors
    [CCDebug warningCustomColors:60 green:120 blue:60];
    
    
    [CCDebug colorRGBEnable: NO];   // NO if Not support XcodeColors
    
    CCDebugWarningPrint(@"cc warning");
    CCDebugErrorPrint(@"cc error");
    CCDebugPrint(@"cc log");
    
    CCDebugTimerPrint(@"NStimer test");
    
    say(@"say ...");
    error(@"error ...");
    warning(@"warning ...");
}

@end
