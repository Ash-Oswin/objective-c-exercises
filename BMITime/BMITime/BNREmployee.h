//
//  BNREmployee.h
//  BMITime
//
//  Created by 谢政 on 2020/4/27.
//  Copyright © 2020 maimemo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRPerson.h"

NS_ASSUME_NONNULL_BEGIN

@class BNRAsset;

@interface BNREmployee : BNRPerson

@property (nonatomic) unsigned int employeeID;
@property (nonatomic) NSDate *hireDate;
//@property (nonatomic, copy) NSArray *assets;
@property  (nonatomic, copy) NSSet *assets;

- (double)yearsOfEmployment;
- (void)addAsset:(BNRAsset *)a;
//- (void)removeAsset:(BNRAsset *)a;
- (unsigned int)valueOfAssets;

@end

NS_ASSUME_NONNULL_END
