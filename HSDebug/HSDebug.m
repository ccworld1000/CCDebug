//
//  HSDebug.m
//  HSDebug
//
//  Created by dengyouhua on 17/3/22.
//  Copyright © 2017年 cc | ccworld1000@gmail.com. All rights reserved.
//  github: https://github.com/ccworld1000/HSDebug
//

#import "HSDebug.h"
#import <Availability.h>

#ifndef HSDebug_h
#define HSDebug_h

// Configurable
#define HSDebugWarningColorRGB @"255,69,0"      // orange
#define HSDebugErrorColorRGB   @"255,0,0"       // red
#define HSDebugNetHintColorRGB @"255,0,255"     // magenta
#define HSDebugNormalColorRGB  @"0,0,255"       // blue
#define HSDebugTimerColorRGB   @"125,38,205"    // Purple3

// HSDebug Log Prompt identification | Configurable

#define HSDebugHint            @"HSDebug Log"
#define HSDebugError           @"HSDebug Error"
#define HSDebugNormal          @"HSDebug normal"
#define HSDebugWarning         @"HSDebug warning"
#define HSDebugTimer           @"HSDebug Timer"

#define HSDebugWebURL          @"HSDebug Web URL"

#define HSDebugProtocolURL     @"HSDebug Protocol URL"

// net 1
NSString const * HSDebugNetHintGetV1        =  @"networking v1 get log";
NSString const * HSDebugNetHintPostV1       =  @"networking v1 post log";
NSString const * HSDebugNetHintResultsV1    =  @"networking v1 results log";

// net 2
NSString const * HSDebugNetHintV2           =  @"networking v2 log";
NSString const * HSDebugNetHintUploadtV2    =  @"networking v2 upload log";

#endif /* HSDebug_h */

#define HSDebugColorsEscape @"\033[fg"

void HSDebugLog(NSString * prefix, NSString * message) {
    [HSDebug debugLog:prefix message:message];
}

void HSDebugPrint(NSString * message) {
    HSDebugLog(HSDebugNormal, message);
}

void HSDebugErrorPrint(NSString * message) {
    [HSDebug debugLog:HSDebugError message:message];
}

void HSDebugWarningPrint(NSString * message) {
    [HSDebug debugLog:HSDebugWarning message:message];
}

void HSDebugTimerPrint(NSString * message) {
    [HSDebug debugLog:HSDebugTimer message:message];
}

void HSDebugWebURLPrint(NSString * message) {
    [HSDebug debugLog:HSDebugWebURL message:message];
}

void HSDebugProtocolURLPrint(NSString * message) {
    [HSDebug debugLog:HSDebugProtocolURL message:message];
}


static BOOL HSDebugALLLogSwitch = NO;
static BOOL HSDebugColorRGBEnable = NO;         // Color control switch off = 0 |  on = 1 | or NO | YES
static BOOL HSDebugEnableNSLogPrefix = NO;      // Whether to open the NSLog prefix  off = 0 |  on = 1 | or NO | YES


static NSString * HSDebugWarningCustomColors     = nil;
static NSString * HSDebugErrorCustomColors       = nil;
static NSString * HSDebugNetHintCustomColors     = nil;
static NSString * HSDebugNormalCustomColors      = nil;
static NSString * HSDebugTimerCustomColors       = nil;

@implementation HSDebug

+ (NSString *) colorWith:(NSUInteger)red green:(NSUInteger)green blue:(NSUInteger)blue {
    return [NSString stringWithFormat:@"%lu,%lu,%lu", (unsigned long)red, (unsigned long)green, (unsigned long)blue];
}

+ (void) debugLogSwitch:(BOOL)showLog {
    if (HSDebugALLLogSwitch != showLog) {
        HSDebugALLLogSwitch = showLog;
    }
}

+ (void) colorRGBEnable:(BOOL)showColor {
    HSDebugColorRGBEnable = showColor;
}

+ (void) enableNSLogPrefix:(BOOL)on {
    HSDebugEnableNSLogPrefix = on;
}

+ (void) warningCustomColors:(NSUInteger)red green:(NSUInteger)green blue:(NSUInteger)blue {
    if (HSDebugALLLogSwitch) {
        HSDebugWarningCustomColors = [self colorWith:red green:green blue:blue];
    }
}

+ (void) errorCustomColors:(NSUInteger)red green:(NSUInteger)green blue:(NSUInteger)blue {
    if (HSDebugALLLogSwitch) {
        HSDebugErrorCustomColors = [self colorWith:red green:green blue:blue];
    }
}

+ (void) netHintCustomColors:(NSUInteger)red green:(NSUInteger)green blue:(NSUInteger)blue {
    if (HSDebugALLLogSwitch) {
        HSDebugNetHintCustomColors = [self colorWith:red green:green blue:blue];
    }
}

+ (void) normalCustomColors:(NSUInteger)red green:(NSUInteger)green blue:(NSUInteger)blue {
    if (HSDebugALLLogSwitch) {
        HSDebugNormalCustomColors = [self colorWith:red green:green blue:blue];
    }
}

+ (void) timerCustomColors:(NSUInteger)red green:(NSUInteger)green blue:(NSUInteger)blue {
    if (HSDebugALLLogSwitch) {
        HSDebugTimerCustomColors = [self colorWith:red green:green blue:blue];
    }
}

+ (void) debugLog:(NSString *)prefix message:(NSString *)message {
    if (!prefix || !message) {
        return;
    }

    if (HSDebugALLLogSwitch) {
        NSString * m = @"";
        if (prefix && message) {
            m = [NSString stringWithFormat:@"[%@][%@] %@", HSDebugHint, prefix, message];
        } else if (prefix && !message) {
            m = [NSString stringWithFormat:@"[%@][%@]", HSDebugHint, prefix];
        } else {
            m = [NSString stringWithFormat:@"[%@] %@", HSDebugHint, message];
        }

        NSString * color = nil;
        if (HSDebugColorRGBEnable && prefix) {
            if ([prefix isEqualToString:HSDebugNormal]) {
                color = HSDebugNormalCustomColors ? HSDebugNormalCustomColors : HSDebugNormalColorRGB;
            } else if ([prefix isEqualToString:HSDebugWarning]) {
                color = HSDebugWarningCustomColors ? HSDebugWarningCustomColors : HSDebugWarningColorRGB;
            } else if ([prefix isEqualToString:HSDebugError]) {
                color = HSDebugErrorCustomColors ? HSDebugErrorCustomColors : HSDebugErrorColorRGB;
            } else if ([prefix hasPrefix:@"networking"]) {
                color = HSDebugNormalCustomColors ? HSDebugNormalCustomColors : HSDebugNetHintColorRGB;
            } else if ([prefix isEqualToString:HSDebugTimer]) {
                color = HSDebugErrorCustomColors ? HSDebugTimerCustomColors : HSDebugTimerColorRGB;
            }
        }

        if (color && message) {
            m = [NSString stringWithFormat:@"%@%@;%@", HSDebugColorsEscape, color, m];
        }

        if (HSDebugEnableNSLogPrefix) {
            NSLog(@"%@", m);
        } else {
            const char * ms = [m UTF8String];
            printf("%s\n", ms);
        }
    }
} /* debugLog */

@end

