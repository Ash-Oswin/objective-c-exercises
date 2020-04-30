//
//  main.m
//  NSData_test
//
//  Created by 谢政 on 2020/4/28.
//  Copyright © 2020 maimemo. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        NSMutableData *data = [NSMutableData data];
        NSURL *url = [NSURL URLWithString: @"https://uploadfile.huiyi8.com/up/a2/e3/83/a2e3832e52216b846c80313049591938.jpg"];
//        NSURLRequest *request = [NSURLRequest requestWithURL: url];
//        NSError *error = nil;
//        NSData *data  = [NSURLConnection sendSynchronousRequest: request
//                                              returningResponse: NULL
//                                                          error: &error];
//        NSData *data = [NSURLSession dataTaskWithRequest:completionHandler:]
        
//        NSData *data = nil;
//        NSURLResponse *response = nil;
//        NSError *error = nil;
        
        NSURLRequest *request = [NSURLRequest requestWithURL: url];
        NSURLSession *session = [NSURLSession sharedSession];
//        NSURLSessionDataTask *task = [session dataTaskWithRequest: request
//                                                completionHandler: ^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
//            NSLog(@"%lu", (unsigned long)[data length]);
//        }];
        NSURLSessionDownloadTask *task = [session downloadTaskWithRequest: request];
        [task resume];
        
//        [session dataTaskWithURL: url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
//            BOOL written = [data writeToFile: @"/Users/xiezheng/Desktop/oc_project/NSData_test/NSData_test/1.jpg"
//                                  atomically: true];
//        }];
        
//        if (!session) {
//            NSLog(@"fetch failed: %@", error);
//            return 1;
//        }
//
//        NSLog(@"The file is %lu bytes", (unsigned long)[session length]);
//
//        BOOL written = [session writeToFile: @"/Users/xiezheng/Desktop/oc_project/NSData_test/1.jpg"];
//
//        if (!written) {
//            NSLog(@"writer failed: %@", error);
//            return 1;
//        }
//
//        NSLog(@"success!");
    }
    return 0;
}
