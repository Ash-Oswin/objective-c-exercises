//
//  main.m
//  NSRange_test
//
//  Created by 谢政 on 2020/4/26.
//  Copyright © 2020 maimemo. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *listOfName = @"ash, clara";
        NSString *name = @"ash";
        NSRange match = [listOfName rangeOfString: name];
        if (match.location == NSNotFound) {
            NSLog(@"Not Found");
        } else {
            NSLog(@"Found!");
        }
    }
    return 0;
}
