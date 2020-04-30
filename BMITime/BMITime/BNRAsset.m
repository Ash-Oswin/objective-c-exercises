//
//  BNRAsset.m
//  BMITime
//
//  Created by 谢政 on 2020/4/27.
//  Copyright © 2020 maimemo. All rights reserved.
//

#import "BNRAsset.h"
#import "BNREmployee.h"

@implementation BNRAsset

//- (void) setHolder:(BNREmployee *)newEmp {
//    [newEmp retain];
//    [_holder release];
//    _holder = newEmp;
//}

- (NSString *)description {
//    return [NSString stringWithFormat:@"<%@, $%u>", self.label, self.resaleValue];
    if (self.holder) {
        return [NSString stringWithFormat:@"<%@ $%d, assigned to %@>",
                self.label, self.resaleValue, self.holder];
    } else {
        return [NSString stringWithFormat:@"<%@ $%d unassigned>", self.label, self.resaleValue];
    }
}


- (void)dealloc {
    //当类被释放时，如果程序覆盖了这个方法，这个方法就会被执行
    NSLog(@"deallocation %@", self);
}

@end
