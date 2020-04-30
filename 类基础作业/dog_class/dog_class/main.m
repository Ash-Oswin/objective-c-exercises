//
//  main.m
//  dog_class
//
//  Created by 谢政 on 2020/4/25.
//  Copyright © 2020 maimemo. All rights reserved.
//
#import <Foundation/Foundation.h>

@interface Dog : NSObject {
    NSString *_color;
    NSString *_sex;
    float _speed;
    float _weight;
}

- (void) setTest;
- (void) eat;
- (void) yell;
- (void) run;
@end

@implementation Dog
//- (id) init : (NSString *)color : (NSString *)sex : (float)speed : (float)weight{
//    if (self = [super init]) {
//        [_color release]
//        _color = [color copy]
//        *_sex = *sex;
//        _speed = speed;
//        _weight = weight;
//    }
//    return self;
//}
- (void) setTest {
    _color = @"white";
    _sex = @"male";
    _speed = 1.5f;
    _weight = 10.0f;
}

- (void) eat {
    _weight += 0.5f;
    NSLog(@"eat, now the weight is %0.2f", _weight);
}

- (void) yell {
    NSLog(@"color is %@, sex is %@, speed is %0.2f, weight is %0.2f",
          _color, _sex, _speed, _weight);
}

- (void) run {
    _weight -= 0.5;
    NSLog(@"run, now the weight is %0.2f", _weight);
}
@end

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Dog *d = [Dog new];
        [d yell];
        [d setTest];
        [d eat];
        [d run];
    }
    return 0;
}
