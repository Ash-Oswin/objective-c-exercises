//
//  BNRPerson.h
//  BMITime
//
//  Created by 谢政 on 2020/4/27.
//  Copyright © 2020 maimemo. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BNRPerson : NSObject

@property (nonatomic, readwrite) float heightInMeters;
@property (nonatomic, readwrite) int weightInKilos;
//@property (nonatomic, readonly) double circumferenceOfEarth;
//@property (nonatomic, readonly) double humanPopulation;

//{
//    float _heightInMeters;
//    int _weightInKilos;
//}

//- (float) heightInMeters;
//- (void) setHeightInMeters: (float)h;
//- (int) weightInKilos;
//- (void) setWeightInKilos: (int)w;

- (float) bodyMassIndex;

- (void) addYourselfToArray: (NSMutableArray *)theArray;

@end

NS_ASSUME_NONNULL_END
