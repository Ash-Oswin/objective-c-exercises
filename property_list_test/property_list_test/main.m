//
//  main.m
//  property_list_test
//
//  Created by 谢政 on 2020/4/28.
//  Copyright © 2020 maimemo. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *mainStorage = [NSMutableArray new];
        NSMutableDictionary *subStorage;
        
        NSString *name0 = @"name0";
        NSString *name1 = @"name1";
        
        subStorage = [NSMutableDictionary new];
        [subStorage setObject:[NSData new] forKey:name0];
        [subStorage setObject:[[NSData alloc] init] forKey: name1];
        [mainStorage addObject:subStorage];
        subStorage = nil;
        
        subStorage = [NSMutableDictionary new];
        [subStorage setObject:[NSNumber numberWithInt:10] forKey:name0];
        [subStorage setObject:[NSNumber numberWithFloat:1.0] forKey:name1];
        [mainStorage addObject:subStorage];
        subStorage = nil;
        
        subStorage = [NSMutableDictionary new];
        [subStorage setObject:@(NO) forKey:name0];
        [subStorage setObject:@"Ash" forKey:name1];
        [mainStorage addObject:subStorage];
        subStorage = nil;
        
        [mainStorage writeToFile:@"/Users/xiezheng/Desktop/oc_project/property_list_test/property_list_test/test.plist" atomically:YES];
    }
    return 0;
}
