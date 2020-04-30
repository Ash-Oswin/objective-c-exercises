//
//  main.m
//  find_same_word
//
//  Created by 谢政 on 2020/4/26.
//  Copyright © 2020 maimemo. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *get_word0 = [NSString stringWithContentsOfFile: @"/Users/xiezheng/Desktop/word0"
                                                     encoding: NSUTF8StringEncoding
                                                            error: NULL];
        
        NSString *get_word1 = [NSString stringWithContentsOfFile: @"/Users/xiezheng/Desktop/word1"
                                                     encoding: NSUTF8StringEncoding
                                                            error: NULL];
        
        NSArray *word0_list = [get_word0 componentsSeparatedByString:@"/n"];
        NSArray *word1_list = [get_word1 componentsSeparatedByString:@"/n"];
        
        for (NSString *i in word0_list) {
            for (NSString *j in word1_list) {
            NSRange r = [i rangeOfString:j options:NSCaseInsensitiveSearch];
                if (r.location != NSNotFound) {
                    NSLog(@"Found one %@ == %@", i, j);
                }
            }
        }
        +
        
    
    
    return 0;
}
