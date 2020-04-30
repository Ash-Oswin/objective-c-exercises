//
//  BNRStockHoiding.h
//  Stocks
//
//  Created by 谢政 on 2020/4/27.
//  Copyright © 2020 maimemo. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BNRStockHoiding : NSObject
//{
//    float _purchaseSharePrice;
//    float _currentSharePrice;
//    int _numberOfShares;
//}

@property (nonatomic) float purchaseSharePrice;
@property (nonatomic) float currentSharePrice;
@property (nonatomic) float numberOfShares;
@property (nonatomic) NSString *symbol;

//- (float) purchaseSharePrice;
//- (void) setPurchaseSharePrice: (float)p;
//
//- (float) currentSharePrice;
//- (void) setCurrentSharePrice: (float)c;
//
//- (int) numberOfShares;
//- (void) setNumberOfShares: (int)n;
//
- (float) costInDollars;
- (float) valueInDollars;
@end

NS_ASSUME_NONNULL_END
