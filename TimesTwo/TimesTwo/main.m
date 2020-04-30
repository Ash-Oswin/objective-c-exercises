//
//  main.m
//  TimesTwo
//
//  Created by 谢政 on 2020/4/26.
//  Copyright © 2020 maimemo. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDate *currentTime = [NSDate new];
        NSLog(@"currentTime's value is %p", currentTime);
        
        NSDate *startTime = currentTime;
        
        sleep(2);
        
        currentTime = [NSDate date];
        NSLog(@"currentTime's value is %p", currentTime);
        NSLog(@"The address of the original object is %p", startTime);
        
        currentTime = nil;
        NSLog(@"currentTime's value is %p", currentTime);
    }
    return 0;
}
