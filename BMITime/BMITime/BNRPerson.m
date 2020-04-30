//
//  BNRPerson.m
//  BMITime
//
//  Created by 谢政 on 2020/4/27.
//  Copyright © 2020 maimemo. All rights reserved.
//

#import "BNRPerson.h"

@interface BNRPerson ()

- (BOOL) hasDriversLicense;

@end

@implementation BNRPerson
//- (float) heightInMeters {
//    return _heightInMeters;
//}
//
//- (void) setHeightInMeters: (float)h {
//    _heightInMeters = h;
//}
//
//- (int) weightInKilos {
//    return _weightInKilos;
//}
//
//- (void) setWeightInKilos: (int)w {
//    _weightInKilos = w;
//}

- (float)bodyMassIndex {
//    return _weightInKilos / (_heightInMeters * _heightInMeters);
    float h = [self heightInMeters];
    float w = [self weightInKilos];
    return w / (h * h);

}
- (void) addYourselfToArray: (NSMutableArray *)theArray {
    [theArray addObject: self];
}

- (BOOL) hasDriversLicense  {
    return NO;
}

@end
