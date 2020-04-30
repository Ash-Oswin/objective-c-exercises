//
//  main.m
//  Stringz
//
//  Created by 谢政 on 2020/4/28.
//  Copyright © 2020 maimemo. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableString *str = [[NSMutableString alloc] init];
        for (int i = 0; i < 10; i ++) {
            [str appendString: @"ash \n"];
        }
        NSError *error = nil;

        [str writeToFile: @"/Users/xiezheng/Desktop/oc_project/Stringz/Stringz/File"
              atomically: YES
                encoding: NSUTF8StringEncoding
                   error: NULL];
        NSLog(@"done");

        BOOL success = [str writeToFile: @"/Users/xiezheng/Desktop/oc_project/Stringz/Stringz/file"
                             atomically: true
                               encoding: NSUTF8StringEncoding error:&error];
        if (success) {
            NSLog(@"done!");
        } else {
            NSLog(@"error %@", [error localizedDescription]);
        }
        
//        NSError *error = nil;
//        NSString *str = [[NSString alloc] initWithContentsOfFile: @"/Users/xiezheng/Desktop/oc_project/Stringz/Stringz/file"
//                                                       encoding: NSASCIIStringEncoding
//                                                          error: &error];

        if (!str) {
            NSLog(@"read failed error is: %@", error);
        } else {
            NSLog(@"success: %@", str);
        }
    }
    return 0;
}
