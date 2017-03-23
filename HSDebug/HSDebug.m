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

//Whether to open the log prefix  off = 0 |  on = 1
#define HSDebugEnablePrefix 0

//Color control switch off = 0 |  on = 1
#define HSDebugColorRGBEnable   1

//Configurable
#define HSDebugWarningColorRGB  @"255,69,0"     //orange
#define HSDebugErrorColorRGB    @"255,0,0"      //red
#define HSDebugNetHintColorRGB  @"255,0,255"    //magenta
#define HSDebugNormalColorRGB   @"0,0,255"      //blue

//HSDebug Log Prompt identification | Configurable

#define HSDebugHint     @"HSDebug Log"
#define HSDebugError    @"HSDebug Error"
#define HSDebugNormal   @"HSDebug normal"
#define HSDebugWarning  @"HSDebug warning"

#define HSDebugWebURL   @"HSDebug Web URL"

#define HSDebugProtocolURL   @"HSDebug Protocol URL"

//net 1
#define HSDebugNetHintGetV1         @"networking v1 get log"
#define HSDebugNetHintPostV1        @"networking v1 post log"
#define HSDebugNetHintResultsV1     @"networking v1 results log"

//net 2
#define HSDebugNetHintV2            @"networking v2 log"
#define HSDebugNetHintUploadtV2     @"networking v2 upload log"

#endif /* HSDebug_h */

#define HSDebugColorsEscape @"\033[fg"

void HSDebugLog (NSString *prefix, NSString *message) {
    [HSDebug debugLog: prefix message: message];
}

void HSDebugPrint (NSString *message) {
    HSDebugLog(HSDebugNormal, message);
}

void HSDebugErrorPrint (NSString *message) {
    [HSDebug debugLog: HSDebugError message: message];
}

void HSDebugWarningPrint (NSString *message) {
    [HSDebug debugLog: HSDebugWarning message: message];
}

void HSDebugWebURLPrint (NSString *message) {
    [HSDebug debugLog: HSDebugWebURL message: message];
}

void HSDebugProtocolURLPrint (NSString *message) {
    [HSDebug debugLog: HSDebugProtocolURL message: message];
}


static BOOL HSDebugALLLogSwitch = NO;

@implementation HSDebug
    
+ (void) debugLogSwitch : (BOOL) showLog {
    if (HSDebugALLLogSwitch != showLog) {
        HSDebugALLLogSwitch = showLog;
    }
}
    
+ (void) debugLog : (NSString *) prefix message : (NSString *) message {
    if (!prefix || !message) {
        return;
    }
    
    if (HSDebugALLLogSwitch) {
        NSString *m = @"";
        if (prefix && message) {
            m = [NSString stringWithFormat: @"[%@][%@] %@", HSDebugHint, prefix, message];
        } else if (prefix && !message) {
            m = [NSString stringWithFormat: @"[%@][%@]", HSDebugHint, prefix];
        } else {
            m = [NSString stringWithFormat: @"[%@] %@", HSDebugHint, message];
        }
        
        NSString *color = nil;
        if (HSDebugColorRGBEnable && prefix) {
            if ([prefix isEqualToString: HSDebugNormal]) {
                color = HSDebugNormalColorRGB;
            } else if ([prefix isEqualToString: HSDebugWarning]) {
                color = HSDebugWarningColorRGB;
            }  else if ([prefix isEqualToString: HSDebugError]) {
                color = HSDebugErrorColorRGB;
            }  else if ([prefix hasPrefix:@"networking"]) {
                color = HSDebugNetHintColorRGB;
            }
        }
        
        if (color && message) {
            m = [NSString stringWithFormat: @"%@%@;[%@]%@", HSDebugColorsEscape, color, HSDebugHint, message];
        }

        if (HSDebugEnablePrefix) {
            NSLog(@"%@", m);
        } else {
            const char *ms = [m UTF8String];
            printf("%s\n", ms);
        }
    }
}
    
@end

