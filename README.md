# HSDebug for iOS && OSX
HSDebug : A flexible, lightweight, scalable, customizable log debugging [supot iOS && OSX]

=======================

[![Apps Using](https://img.shields.io/cocoapods/at/HSDebug.svg?label=Apps%20Using%20HSDebug&colorB=28B9FE)](http://cocoapods.org/pods/HSDebug) [![Downloads](https://img.shields.io/cocoapods/dt/HSDebug.svg?label=Total%20Downloads&colorB=28B9FE)](http://cocoapods.org/pods/HSDebug)

[![Platform](https://img.shields.io/badge/platforms-iOS%20%7C%20OSX-orange.svg)](https://github.com/ccworld1000/HSDebug.git)
[![Languages](https://img.shields.io/badge/languages-ObjC-orange.svg)](https://github.com/ccworld1000/HSDebug)

[![Version](https://img.shields.io/cocoapods/v/HSDebug.svg)](https://github.com/ccworld1000/HSDebug.git)
[![License](https://img.shields.io/cocoapods/l/HSDebug.svg)](https://github.com/ccworld1000/HSDebug/blob/master/LICENSE)

[![Build Status](https://travis-ci.org/ccworld1000/HSDebug.svg?branch=master)](https://travis-ci.org/ccworld1000/HSDebug)

[https://github.com/ccworld1000/HSDebug.git](https://github.com/ccworld1000/HSDebug.git)

## First : install XcodeColors

## Support Xcode 4, 5, 6, 7 & 8

[https://github.com/robbiehanson/XcodeColors](https://github.com/robbiehanson/XcodeColors)

##bug 
Email ： <a href="mailto:ccworld1000@gmail.com">ccworld1000@gmail.com</a>

## Podfile

```ruby
pod 'HSDebug'
```
## Demo
```Objective-C
+ (void) logTest {
    [HSDebug debugLogSwitch: YES];
    
    [HSDebug enableNSLogPrefix: NO];
    
    /**
     *  colorRGBEnable | [XcodeColors installation] https://github.com/robbiehanson/XcodeColors
     *  screenshot https://github.com/ccworld1000/HSDebug
     *  @param showColor showColor description
     */
    [HSDebug colorRGBEnable: YES];
    
    [HSDebug warningCustomColors:60 green:120 blue:60];
    
    HSDebugWarningPrint(@"cc warning");
    HSDebugErrorPrint(@"cc error");
    HSDebugPrint(@"cc log");
    
    HSDebugTimerPrint(@"NStimer test");
}
```

## Screenshot

### OSX
![HSDebug Mac Screenshot](https://github.com/ccworld1000/HSDebug/blob/master/Documentation/OSXRunning.png?raw=true)

### iOS
![HSDebug iOS Screenshot](https://github.com/ccworld1000/HSDebug/blob/master/Documentation/iOSRunning.png?raw=true)

### OSX Xcode_8.3.2
![HSDebug Mac Xcode_8.3.2 Screenshot](https://github.com/ccworld1000/HSDebug/blob/master/Documentation/OSXRunning_Xcode_8.3.2.png?raw=true)

### iOS Xcode_8.3.2
![HSDebug iOS Xcode_8.3.2 Screenshot](https://github.com/ccworld1000/HSDebug/blob/master/Documentation/iOSRunning_Xcode_8.3.2.png?raw=true)


## HSDebug
HSDebug simple support machosx and iOS, can simple replace NSLog.


# MIT License
***

MIT License

Copyright (c) 2016-now ccworld1000 | bug : <a href="mailto:ccworld1000@gmail.com">ccworld1000@gmail.com</a>

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
