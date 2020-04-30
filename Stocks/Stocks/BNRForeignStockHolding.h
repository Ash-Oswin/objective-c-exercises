//
//  BNRForeignStockHolding.h
//  Stocks
//
//  Created by 谢政 on 2020/4/27.
//  Copyright © 2020 maimemo. All rights reserved.
//

#import "BNRStockHoiding.h"

NS_ASSUME_NONNULL_BEGIN

@interface BNRForeignStockHolding : BNRStockHoiding

@property (nonatomic) float conversionRate;

- (float) costInDollars;
- (float) valueInDollars;

@end

NS_ASSUME_NONNULL_END
