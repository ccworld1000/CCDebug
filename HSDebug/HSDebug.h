//
//  HSDebug.h
//  HSDebug
//
//  Created by dengyouhua on 17/3/22.
//  Copyright © 2017年 cc | ccworld1000@gmail.com. All rights reserved.
//  github: https://github.com/ccworld1000/HSDebug
//

#import <Foundation/Foundation.h>

/**
 *  HSDebugLog [C style] | Simplified use
 *
 *  @param prefix  prefix description
 *  @param message message description
 */
FOUNDATION_EXPORT void HSDebugLog (NSString *prefix, NSString *message);

/**
 *  HSDebugPrint | [C style] | Use default hints
 *
 *  @param message message description
 */
FOUNDATION_EXPORT void HSDebugPrint (NSString *message);

/**
 *  HSDebugErrorPrint| [C style] | Error prompt
 *
 *  @param message message description
 */
FOUNDATION_EXPORT void HSDebugErrorPrint (NSString *message);

/**
 *  HSDebugWarningPrint | [C style] | Warning prompt
 *
 *  @param message message description
 *
 *  @return return value description
 */
FOUNDATION_EXPORT void HSDebugWarningPrint (NSString *message);

/**
 *  HSDebugWebURLPrint | [C style] | WebURL prompt
 *
 *  @param message message description
 */
FOUNDATION_EXPORT void HSDebugWebURLPrint (NSString *message);

/**
 *  HSDebugWebURLPrint | [C style] | ProtocolURL prompt
 *
 *  @param message message description
 */
FOUNDATION_EXPORT void HSDebugProtocolURLPrint (NSString *message);

@interface HSDebug : NSObject

/*=============================================================================================================*/

/**
 *  debugLogSwitch | control all log switch, default NO, if you want debug, set YES
 *
 *  @param showLog showLog description | YES show , NO do noting.
 */
+ (void) debugLogSwitch : (BOOL) showLog;

/**
 *  colorRGBEnable | [XcodeColors installation] https://github.com/robbiehanson/XcodeColors
 *  screenshot https://github.com/ccworld1000/HSDebug
 *  @param showColor showColor description
 */
+ (void) colorRGBEnable : (BOOL) showColor;

/*
 * [*]CustomColors only [debugLogSwitch | showLog = YES && colorRGBEnable | showColor = YES ]take effect
 * red, green, blue value = [0 - 255]
 *
 */

/**
 *  warningCustomColors
 *
 *  @param red   red description
 *  @param green green description
 *  @param blue  blue description
 */
+ (void) warningCustomColors : (NSUInteger) red green : (NSUInteger) green blue : (NSUInteger) blue;

/**
 *  errorCustomColors
 *
 *  @param red   red description
 *  @param green green description
 *  @param blue  blue description
 */
+ (void) errorCustomColors : (NSUInteger) red green : (NSUInteger) green blue : (NSUInteger) blue;

/**
 *  netHintCustomColors
 *
 *  @param red   red description
 *  @param green green description
 *  @param blue  blue description
 */
+ (void) netHintCustomColors : (NSUInteger) red green : (NSUInteger) green blue : (NSUInteger) blue;

/**
 *  normalCustomColors
 *
 *  @param red   red description
 *  @param green green description
 *  @param blue  blue description
 */
+ (void) normalCustomColors : (NSUInteger) red green : (NSUInteger) green blue : (NSUInteger) blue;

/*=============================================================================================================*/
    
/**
 *  debugLog [OC style]
 *
 *  @param prefix  prefix description
 *  @param message message description
 */
+ (void) debugLog : (NSString *) prefix message : (NSString *) message;
    
@end

