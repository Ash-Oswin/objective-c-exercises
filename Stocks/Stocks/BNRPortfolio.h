//
//  BNRPortfolio.h
//  Stocks
//
//  Created by 谢政 on 2020/4/27.
//  Copyright © 2020 maimemo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRStockHoiding.h"
#import "BNRForeignStockHolding.h"

NS_ASSUME_NONNULL_BEGIN

@interface BNRPortfolio : NSObject

@property (nonatomic) NSArray *holdings;

- (void) addHoldings:(BNRStockHoiding *)bth;

- (void) removeHoldings:(BNRStockHoiding *)bth;

- (int) totalValue;

- (NSArray*) theRichStocksHolders;

- (NSArray*) sort_for_symbol;

@end

NS_ASSUME_NONNULL_END
