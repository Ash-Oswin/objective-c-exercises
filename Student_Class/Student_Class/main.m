//
//  main.m
//  Student_Class
//
//  Created by 谢政 on 2020/4/25.
//  Copyright © 2020 maimemo. All rights reserved.
//
#import <Foundation/Foundation.h>

@interface Student : NSObject {
    @public
    NSString *_name;
    int _age;
    float _weight;
    int _language;
    int _math;
    int _english;
}

- (void)study;
- (void)study_With_Subject : (NSString *)subject;
- (void)print_Subject_With : (NSString *)subject0 : (NSString *) subject1 : (NSString *) sunject2;
- (int)sum_With : (int)num0 and: (int)num1;
- (float)run;
- (float)eat;

@end

@implementation Student

- (void) study {
    NSLog(@"%@", @"study");
}

- (void) study_With_Subject : (NSString *)subject {
    NSLog(@"study %@", subject);
}

- (void) print_Subject_With : (NSString *)subject0 : (NSString *)subject1 : (NSString *)subject2 {
    NSLog(@"%@, %@, %@", subject0, subject1, subject2);
}

- (int) sum_With : (int)num0 and: (int)num1 {
    return num0 + num1;
}

- (float) run {
    _weight -= 0.5f;
    return _weight;
}

- (float) eat {
    _weight += 0.7f;
    return _weight;
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        Student *s1 = [Student new];
        s1->_name = @"Ash";
        s1->_age = 18;
        s1->_language = 60;
        s1->_math = 70;
        s1->_english = 80;
        s1->_weight = 10;
//        NSLog(@"name is %@, age is %d, \
//              language score is %d, \
//              math score is %d, \
//              english score is %d",
//              s1->_name,
//              s1->_age,
//              s1->_language,
//              s1->_math,
//              s1->_english);
//
//        [s1 study];
//        [s1 study_With_Subject:@"english"];
//        [s1 print_Subject_With:@"language" : @"math" : @"english"];
//        NSLog(@"%d", [s1 sum_With: 1 and: 2]);
        NSLog(@"%.1f", [s1 run]);
        NSLog(@"%.1f", [s1 eat]);
    }
    
    return 0;
}
