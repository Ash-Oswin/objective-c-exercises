//
//  BNRPortfolio.m
//  Stocks
//
//  Created by 谢政 on 2020/4/27.
//  Copyright © 2020 maimemo. All rights reserved.
//

#import "BNRPortfolio.h"

@interface BNRPortfolio () {
    NSMutableArray *_holdings;
}

@end

@implementation BNRPortfolio

- (void) setHoldings:(NSArray *)h {
    _holdings = [h mutableCopy];
}

- (NSArray *) holdings {
    return [_holdings copy];
}

- (void) addHoldings:(BNRStockHoiding *)bth {
    if (!_holdings) {
        _holdings = [[NSMutableArray alloc] init];
    }
    [_holdings addObject: bth];
}

- (void) removeHoldings:(BNRStockHoiding *)bth {
    if (!_holdings) {
        return;
    }
    for (int i = 0; i < [_holdings count]; i ++) {
        if (bth == _holdings[i]) {
            [_holdings removeObject: bth];
        }
    }
}

- (int) totalValue {
    float sum = 0.0;
    for (BNRStockHoiding *bth in _holdings) {
        sum += [bth valueInDollars];
    }
    return sum;
}

- (NSArray*) theRichStocksHolders {
    NSSortDescriptor *predicate = [NSSortDescriptor
                                   sortDescriptorWithKey: @"valueInDollars"
                                   ascending:NO];
    
    NSMutableArray *holding_list = [_holdings mutableCopy];
    [holding_list sortUsingDescriptors: @[predicate]];
    
    NSRange theRange;
    theRange.location = 0;
    theRange.length = 3;
    
    NSArray *most_rich = [holding_list subarrayWithRange:theRange];
    
    return most_rich;
}

- (NSArray*) sort_for_symbol {
    NSSortDescriptor *predicate = [NSSortDescriptor
                                      sortDescriptorWithKey:@"symbol"
                                      ascending:YES];
    
    NSMutableArray *holding_list = [_holdings mutableCopy];
    [holding_list sortUsingDescriptors: @[predicate]];
    
    return holding_list;
}
@end
