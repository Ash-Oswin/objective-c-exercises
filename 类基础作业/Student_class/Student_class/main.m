//
//  main.m
//  Student_class
//
//  Created by 谢政 on 2020/4/25.
//  Copyright © 2020 maimemo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject {
    NSString *_name;
    NSString *_birthday;
    NSString *_sex;
    int _age;
    float _height;
    float _weight;
    float _c_score;
    float _oc_score;
    float _ios_score;
}

- (id) initWithName:(NSString *)name
           birthday:(NSString *)birthday
                sex:(NSString *)sex
                age:(int)age
             height:(float)height
             weight:(float)weight
            c_score:(float)c_score
           oc_score:(float)oc_socre
          ios_score:(float)ios_score;

- (void) run;
- (void) eat;
- (void) study;
- (void) sleep;

- (float) clac_total_score;
- (float) clac_average_score;

@end

@implementation Student
- (id) initWithName:(NSString *)name
           birthday:(NSString *)birthday
                sex:(NSString *)sex
                age:(int)age
             height:(float)height
             weight:(float)weight
            c_score:(float)c_score
           oc_score:(float)oc_socre
          ios_score:(float)ios_score {
    self = [super init];
    _name = name;
    _birthday = birthday;
    _sex = sex;
    _age = age;
    _height = height;
    _weight = weight;
    _c_score = c_score;
    _oc_score = oc_socre;
    _ios_score = ios_score;
    return self;
}

- (void) run {
    _height += 1.0f;
    _weight -= 0.5f;
    NSLog(@"run, now the height is %0.1f cm, weight is %0.1f kg", _height, _weight);
}

- (void) eat {
    _height += 1.0f;
    _weight += 0.5f;
    NSLog(@"eat, now the height is %0.1f cm, weight is %0.1f kg", _height, _weight);
}

- (void) study {
    _c_score += 1.0f;
    _oc_score += 1.0f;
    _ios_score += 1.0f;
    NSLog(@"The score of c is %0.1f, \
          score of oc is %0.1f, \
          score of ios is %0.1f",
          _c_score,
          _oc_score,
          _ios_score);
}

- (void) sleep {
    NSLog(@"name : %@, \
          birthday : %@, \
          age : %d, \
          height : %0.2f cm, \
          weight : %0.2f kg, \
          sex : %@, \
          score of c : %0.1f, \
          score of oc : %0.1f, \
          socre of ios : %0.1f",
          _name,
          _birthday,
          _age,
          _height,
          _weight,
          _sex,
          _c_score,
          _oc_score,
          _ios_score);
}

- (float) clac_total_score {
    return _c_score + _oc_score + _ios_score;
}

- (float) clac_average_score {
    return (_c_score + _oc_score + _ios_score) / 3;
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Student *ash = [[Student alloc] initWithName : @"Ash"
                                            birthday : @"2002.01.16"
                                                 sex : @"male"
                                                 age : 18
                                              height : 183.0f
                                              weight : 70.1f
                                             c_score : 80
                                            oc_score : 80
                                           ios_score : 90];
//        [ash setValue_demo : @"Ash" : @"2002.01.16" : @"male" : 18 : 183.0f : 71.0f : 81.0f : 91.0f]
        [ash sleep];
        [ash run];
        [ash eat];
        [ash study];
        NSLog(@"%0.1f", [ash clac_total_score]);
        NSLog(@"%0.1f", [ash clac_average_score]);
    }
    return 0;
}
