//
//  main.m
//  NSString_test
//
//  Created by 谢政 on 2020/4/26.
//  Copyright © 2020 maimemo. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *now = @"now";
        NSString *dateString = [NSString stringWithFormat:@"The date is %@", now];
        NSLog(@"%@", dateString);
        
        NSUInteger charCount = [dateString length];
        NSLog(@"dateString's length is %lu", charCount);
        
        if ([now isEqualToString: dateString]) {
            NSLog(@"now not equal to dateString");
        }
        
        NSString *capital_now = [now uppercaseString];
        NSLog(@"%@", capital_now);
    }
    return 0;
}
