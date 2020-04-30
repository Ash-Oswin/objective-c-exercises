//
//  BNRLogger.m
//  Callbacks
//
//  Created by 谢政 on 2020/4/28.
//  Copyright © 2020 maimemo. All rights reserved.
//

#import "BNRLogger.h"

@implementation BNRLogger
- (NSString *)lastTimeString
{
    static NSDateFormatter *dateFormatter = nil;
    if (!dateFormatter) {
        dateFormatter = [[NSDateFormatter alloc] init];
        [dateFormatter setTimeStyle: NSDateFormatterMediumStyle];
        [dateFormatter setDateStyle: NSDateFormatterMediumStyle];
        NSLog(@"create dateFormatter");
    }
    return [dateFormatter stringFromDate: self.lastTime];
}

- (void)updateLastTime: (NSTimer *)t {
    NSDate *now = [NSDate date];
    [self setLastTime: now];
    NSLog(@"Just set time to %@", self.lastTimeString);
}

- (void)zoneChange:(NSNotification *)note {
    NSLog(@"The system time zone has changed!");
}

- (void)connection: (NSURLConnection *)connection
    didReceiveData: (nonnull NSData *)data {
    
    NSLog(@"received %lu byte", [data length]);
    if (!_incomingData) {
        _incomingData = [[NSMutableData alloc] init];
    }
    [_incomingData appendData: data];
    
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection {
    NSLog(@"Got it all!");
    
//    NSError *error = nil;
    
//    BOOL written = [_incomingData writeToFile: @"/Users/xiezheng/Desktop/oc_project/Callbacks/Callbacks/test.jpg"
//                                      options: 0
//                                        error: &error
//                                   atomically: YES];
    
//    if (!written) {
//        NSLog(@"write failed %@", error);
//        return;
//    }
    
    
    NSString *string = [[NSString alloc] initWithData: _incomingData
                                             encoding: NSUTF8StringEncoding];
    
    NSLog(@"string has %lu data", [string length]);
    _incomingData = nil;
}

- (void)connection:(NSURLConnection *)connection
  didFailWithError:(NSError *)error {
    NSLog(@"connection failed: %@", [error localizedDescription]);
}

- (void) dealloc{
    [[NSNotificationCenter defaultCenter] removeObserver: self];
}

@end
