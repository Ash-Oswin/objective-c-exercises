//
//  main.m
//  Callbacks
//
//  Created by 谢政 on 2020/4/28.
//  Copyright © 2020 maimemo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRLogger.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
//        [[NSRunLoop currentRunLoop] run];
        BNRLogger *logger = [[BNRLogger alloc] init];
        
//        [[NSNotificationCenter defaultCenter] addObserver: logger
//                                                 selector: @selector(zoneChange:)
//                                                     name: NSSystemTimeZoneDidChangeNotification
//                                                   object: nil];
        
        [[NSNotificationCenter defaultCenter] addObserverForName: NSSystemTimeZoneDidChangeNotification
                                                          object: nil
                                                           queue: nil
                                                      usingBlock: ^(NSNotification * _Nonnull note) {
                        NSLog(@"The system time zone has changed!");
        }];
        
        NSURL *url = [NSURL URLWithString:
                      @"https://uploadfile.huiyi8.com/up/a2/e3/83/a2e3832e52216b846c80313049591938.jpg"];
        NSURLRequest *request = [NSURLRequest requestWithURL: url];
        __unused NSURLConnection *fetchConn = [[NSURLConnection alloc] initWithRequest: request
                                                                     delegate: logger
                                                             startImmediately: YES];
        
        __unused NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval: 2.0
                                                          target: logger
                                                        selector: @selector(updateLastTime:)
                                                        userInfo: nil
                                                         repeats: YES];
        
        [[NSRunLoop currentRunLoop] run];
    }
    return 0;
}
