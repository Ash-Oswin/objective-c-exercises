//
//  main.m
//  car_class
//
//  Created by 谢政 on 2020/4/25.
//  Copyright © 2020 maimemo. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface Car : NSObject {
    NSString *_brand;
    NSString *_model;
    NSString *_color;
    int _num_of_seat;
    int _num_of_whell;
    float _oil_volume;
}

- (id) initWithBrand : (NSString *)brand
               model : (NSString *)model
               color : (NSString *)color
         num_of_seat : (int)num_of_sear
        num_of_wheel : (int)num_of_whell
       oil_of_volume : (float)oil_volume;
- (void) drive;
- (void) stop;
- (void) add_gasoline;
@end

@implementation Car
- (id) initWithBrand : (NSString *)brand
               model : (NSString *)model
               color : (NSString *)color
         num_of_seat : (int)num_of_seat
        num_of_wheel : (int)num_of_wheel
        oil_of_volume : (float)oil_volume {
    self = [super init];
    _brand = brand;
    _model = model;
    _color = color;
    _num_of_seat = num_of_seat;
    _num_of_whell = num_of_wheel;
    _oil_volume = oil_volume;
    
    return self;
}

- (void) drive {
    _oil_volume -= 1.0f;
    NSLog(@"Total gasoline remaining %0.2f", _oil_volume);
}

- (void) stop {
    NSLog(@"%@ stop", _brand);
}

- (void) add_gasoline {
    _oil_volume += 5.0f;
    NSLog(@"Now total gasoline is %0.2f", _oil_volume);
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Car *c = [[Car alloc] initWithBrand: @"Volvo"
                                    model : @"RE"
                                    color : @"black"
                              num_of_seat : 4
                             num_of_wheel : 4
                            oil_of_volume : 100.0f];
        [c drive];
        [c stop];
        [c add_gasoline];
    }
    return 0;
}
