//
//  main.m
//  Constant
//
//  Created by 谢政 on 2020/4/28.
//  Copyright © 2020 maimemo. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"\u03c0 is %f", M_PI);
        NSLog(@"%d is larger", MAX(10, 90));
        
        NSLocale *here = [NSLocale currentLocale];
        NSString *currency = [here objectForKey:NSLocaleCurrencyCode];
        NSLog(@"Money is %@", currency);
        
        
    }
    return 0;
}
