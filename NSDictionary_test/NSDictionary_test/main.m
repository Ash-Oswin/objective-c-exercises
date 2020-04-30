//
//  main.m
//  NSDictionary_test
//
//  Created by 谢政 on 2020/4/27.
//  Copyright © 2020 maimemo. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        NSDictionary *test = @{
//            @"Ash" : @1,
//            @"Clara" : @2,
//            @"LEL" : @3,
//        };
//
//        NSLog(@"%@", test[@"Clara"]);
        NSDictionary *innerPlantsMoons = @{
            @"Mercury" : @[],
            @"Venus" : @[],
            @"Earth" : @[@"Luna"],
            @"Mars" : @[@"Ash",@"Clara"]
        };
        NSLog(@"%@", innerPlantsMoons[@"Mars"][0]);
        
        NSMutableDictionary *dict = [[NSMutableDictionary alloc] init];
        [dict setObject:@"Ash" forKey:@"test"];
        NSLog(@"%@", [dict objectForKey: @"test"]);
        
        NSMutableDictionary *name = [NSMutableDictionary dictionary];
        [name setObject:@"Ash" forKey:@"name"];
        [name setObject:@"Clara" forKey:@"name"];
        NSLog(@"%@", name[@"name"]);
    
    }
    return 0;
}
