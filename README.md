# CCDebug for iOS && OSX
CCDebug : A flexible, lightweight, scalable, customizable log debugging [supot iOS && OSX]

=======================

[https://github.com/ccworld1000/CCDebug.git](https://github.com/ccworld1000/CCDebug.git)

## First : install XcodeColors

[https://github.com/robbiehanson/XcodeColors](https://github.com/robbiehanson/XcodeColors)

#### Support Xcode 4, 5, 6, 7, 8 & 9


## bug or suggest

QQ Email ：<a href="mailto:2291108617@qq.com">2291108617@qq.com</a>

G Email ： <a href="mailto:ccworld1000@gmail.com">ccworld1000@gmail.com</a>

**[Suggestion to send at the same time]**

## Podfile

```ruby
pod 'CCDebug'
```
## Demo
```Objective-C
+ (void) logTest {
    [CCDebug debugLogSwitch: YES];
    
    [CCDebug enableNSLogPrefix: NO];
    
    /**
     *  colorRGBEnable | [XcodeColors installation] https://github.com/robbiehanson/XcodeColors
     *  screenshot https://github.com/ccworld1000/CCDebug
     *  @param showColor showColor description
     */
    [CCDebug colorRGBEnable: YES];
    
    [CCDebug warningCustomColors:60 green:120 blue:60];
    
    CCDebugWarningPrint(@"cc warning");
    CCDebugErrorPrint(@"cc error");
    CCDebugPrint(@"cc log");
    
    CCDebugTimerPrint(@"NStimer test");
}
```

## Screenshot

### OSX
![CCDebug Mac Screenshot](https://github.com/ccworld1000/CCDebug/blob/master/Documentation/OSXRunning.png?raw=true)

### iOS
![CCDebug iOS Screenshot](https://github.com/ccworld1000/CCDebug/blob/master/Documentation/iOSRunning.png?raw=true)

### OSX Xcode_8.3.2
![CCDebug Mac Xcode_8.3.2 Screenshot](https://github.com/ccworld1000/CCDebug/blob/master/Documentation/OSXRunning_Xcode_8.3.2.png?raw=true)

### iOS Xcode_8.3.2
![CCDebug iOS Xcode_8.3.2 Screenshot](https://github.com/ccworld1000/CCDebug/blob/master/Documentation/iOSRunning_Xcode_8.3.2.png?raw=true)


## CCDebug
CCDebug simple support machosx and iOS, can simple replace NSLog.


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
