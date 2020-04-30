//
//  BNRForeignStockHolding.m
//  Stocks
//
//  Created by 谢政 on 2020/4/27.
//  Copyright © 2020 maimemo. All rights reserved.
//

#import "BNRForeignStockHolding.h"

@implementation BNRForeignStockHolding

- (float) costInDollars {
    return self.conversionRate * self.purchaseSharePrice;
}

- (float) valueInDollars {
    return self.conversionRate * self.currentSharePrice;
}
@end
