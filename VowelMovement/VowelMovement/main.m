//
//  main.m
//  VowelMovement
//
//  Created by 谢政 on 2020/4/28.
//  Copyright © 2020 maimemo. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^ArrayEnumerationBlock)(id, NSUInteger, BOOL *);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *oldString = [NSArray arrayWithObjects: @"Ash", @"sauerkraut", @"test", @"Raygun", nil];
        NSLog(@"oldString: %@", oldString);
        NSMutableArray *newStrings = [NSMutableArray array];
        
        NSArray *vowels = [NSArray arrayWithObjects:
                           @"a", @"i", @"u", @"e", @"o", nil];
        
//        void (^devowelizer)(id, NSUInteger, BOOL *);
//        ArrayEnumerationBlock devowelizer;

        
        [oldString enumerateObjectsUsingBlock: ^(id string, NSUInteger i, BOOL *stop) {
            NSMutableString *newString = [NSMutableString stringWithString:string];
            
            NSRange yRange = [string rangeOfString: @"a"
                                           options: NSCaseInsensitiveSearch];
            
            if (yRange.location != NSNotFound) {
                *stop = YES;
                return;
            }
            
            for (NSString *s in vowels) {
                NSRange fullRange = NSMakeRange(0, [newString length]);
                [newString replaceOccurrencesOfString: s
                                           withString: @""
                                              options: NSCaseInsensitiveSearch
                                                range: fullRange];
            }
            
            [newStrings addObject:newString];
        }];
        NSLog(@"%@", newStrings);
        
    }
    return 0;
}
