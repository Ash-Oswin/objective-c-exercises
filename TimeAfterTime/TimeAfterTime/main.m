//
//  main.m
//  TimeAfterTime
//
//  Created by 谢政 on 2020/4/25.
//  Copyright © 2020 maimemo. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        NSDate *now = [NSDate date];
        NSDate *now = [[NSDate alloc] init];
        NSLog(@"This NSDate object lives at %p", now);
        NSLog(@"The date is %@", now);
        
        double seconds = [[NSDate date] timeIntervalSince1970];
        NSLog(@"1970 %f", seconds);
        
        NSDate *later = [now dateByAddingTimeInterval: 100000];
        NSLog(@"%@", later);
        
        NSCalendar *cal = [NSCalendar currentCalendar];
        NSLog(@"My calendar is %@", [cal calendarIdentifier]);
        
        unsigned long day = [cal ordinalityOfUnit:NSCalendarUnitDay
                                           inUnit:NSCalendarUnitMonth
                                          forDate:now];
        NSLog(@"This is day %lu of the month", day);
    }
    return 0;
}
