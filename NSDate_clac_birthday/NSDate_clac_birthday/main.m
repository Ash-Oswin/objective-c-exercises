//
//  main.m
//  NSDate_clac_birthday
//
//  Created by 谢政 on 2020/4/26.
//  Copyright © 2020 maimemo. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDate *now = [[NSDate alloc] init];
        NSDateComponents *comps = [[NSDateComponents alloc] init];
        [comps setYear:2002];
        [comps setMonth:1];
        [comps setDay:16];
        
        NSCalendar *g = [[NSCalendar alloc] initWithCalendarIdentifier: NSCalendarIdentifierGregorian];
        
        NSDate *birthday = [g dateFromComponents:comps];
        
        double seconds = [now timeIntervalSinceDate: birthday];
        NSLog(@"%f", seconds);
    }
    return 0;
}
