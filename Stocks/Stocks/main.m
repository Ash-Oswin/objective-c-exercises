//
//  main.m
//  Stocks
//
//  Created by 谢政 on 2020/4/27.
//  Copyright © 2020 maimemo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRForeignStockHolding.h"
#import "BNRPortfolio.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        BNRStockHoiding *bsh = [BNRStockHoiding new];
        
//        [bsh setCurrentSharePrice: 1.8];
//        [bsh setPurchaseSharePrice: 1.9];
//        [bsh setNumberOfShares: 10];
//
//        float c = [bsh currentSharePrice];
//        float p = [bsh purchaseSharePrice];
//        int n = [bsh numberOfShares];
//        NSLog(@"%.2f %.2f %d", c, p, n);
//
//        float cd = [bsh costInDollars];
//        float vd = [bsh valueInDollars];
//        NSLog(@"%.2f %.2f", cd, vd);
        
        NSMutableArray *stock_holding_list = [NSMutableArray new];
        BNRForeignStockHolding *fsg = [BNRForeignStockHolding new];
        for (int i = 0; i < 3; i ++) {
            BNRStockHoiding *bsh = [BNRStockHoiding new];
            [stock_holding_list addObject:bsh];
            
            [stock_holding_list[i] setCurrentSharePrice: (i + 0.8)];
            [stock_holding_list[i] setPurchaseSharePrice: (i + 0.9)];
            [stock_holding_list[i] setNumberOfShares: (i + 10)];
            
            float cd = [stock_holding_list[i] costInDollars];
            float vd = [stock_holding_list[i] valueInDollars];
            NSLog(@"%.2f,  %.2f", cd, vd);
        }
        [stock_holding_list addObject: fsg];
        
        fsg.conversionRate = 11.1;
        fsg.currentSharePrice = 1.1;
        fsg.numberOfShares = 1.0;
        NSLog(@"%.2f %.2f %.2f", fsg.conversionRate, fsg.currentSharePrice, fsg.numberOfShares);
        
        NSArray *symbol = @[@"ASH", @"AAA", @"DDD", @"CCC"];
        
        for (int i = 0; i < [symbol count]; i ++) {
            [stock_holding_list[i] setSymbol: symbol[i]];
        }
        
        BNRPortfolio *bpf = [BNRPortfolio new];
        [bpf setHoldings: stock_holding_list];
//
        
        [bpf totalValue];
        
        for (BNRStockHoiding *b in [bpf theRichStocksHolders]) {
            NSLog(@"%.2f", b.valueInDollars);
        }
//        NSLog(@"%@", bpf.theRichStocksHolders);
//        BNRStockHoiding *test = [BNRForeignStockHolding new];
//        NSLog(@"%f", test.costInDollars);
        
        for (BNRStockHoiding *b in [bpf sort_for_symbol]) {
            NSLog(@"%@", b.symbol);
        }
        
    }
    return 0;
}
