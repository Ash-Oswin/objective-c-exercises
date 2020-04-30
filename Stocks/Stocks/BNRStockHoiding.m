//
//  BNRStockHoiding.m
//  Stocks
//
//  Created by 谢政 on 2020/4/27.
//  Copyright © 2020 maimemo. All rights reserved.
//

#import "BNRStockHoiding.h"

@implementation BNRStockHoiding

//- (float) purchaseSharePrice {
//    return _purchaseSharePrice;
//}
//- (void) setPurchaseSharePrice:(float)n {
//    _purchaseSharePrice = n;
//}
//
//- (float) currentSharePrice {
//    return _currentSharePrice;
//}
//- (void) setCurrentSharePrice:(float)c {
//    _currentSharePrice = c;
//}
//
//- (int) numberOfShares {
//    return _numberOfShares;
//}
//- (void) setNumberOfShares:(int)n {
//    _numberOfShares = n;
//}

- (float) costInDollars {
    return [self purchaseSharePrice] * [self numberOfShares];
}

- (float) valueInDollars {
    return [self currentSharePrice] * [self numberOfShares];
}

@end
