//
//  main.m
//  DateList
//
//  Created by 谢政 on 2020/4/26.
//  Copyright © 2020 maimemo. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDate *now = [NSDate new];
        NSDate *tomorrow = [now dateByAddingTimeInterval: 24.0 * 60.0 * 60.0];
        NSDate *yesterday = [now dateByAddingTimeInterval: -(24.0 * 60.0 * 60.0)];
        
//        NSArray *dateList = @[now, tomorrow, yesterday];
//        NSMutableArray *dateList = [NSMutableArray array];
        NSMutableArray *dateList = [[NSMutableArray alloc] init];
//        NSArray *dateList = [NSArray arrayWithObject:now, tomorrow, yesterday, nil];
        
        [dateList addObject:now];
        [dateList addObject:tomorrow];
        [dateList insertObject:yesterday atIndex:0];
        
//        NSLog(@"The first date is %@", dateList[0]);
//        NSLog(@"The third date is %@", dateList[2]);
//        NSLog(@"There are %lu dates", [dateList count]);
        
//        NSUInteger dateCount = [dateList count];
//        for (int i = 0; i < dateCount; i ++) {
//            NSDate *d = dateList[i];
//            NSLog(@"Here is a date: %@", d);
//        }
        for (NSDate *d in dateList) {
            NSLog(@"Here is a date: %@", d);
        }
        
        [dateList removeObjectAtIndex:0];
        NSLog(@"Now the first date is %@", dateList[0]);
    }
    return 0;
}
