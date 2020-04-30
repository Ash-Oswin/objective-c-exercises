//
//  main.m
//  get_computer_information
//
//  Created by 谢政 on 2020/4/26.
//  Copyright © 2020 maimemo. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSHost *host = [NSHost currentHost];
        NSString *host_name = [host localizedName];
        NSLog(@"%@", host_name);
    }
    return 0;
}
