//
//  main.m
//  BMITime
//
//  Created by 谢政 on 2020/4/27.
//  Copyright © 2020 maimemo. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "BNRPerson.h"
#import "BNREmployee.h"
#import "BNRAsset.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        BNREmployee *ash = [[BNREmployee alloc] init];
////        [ash setHeightInMeters: 1.8];
////        [ash setWeightInKilos: 70];
//        ash.heightInMeters = 1.8;
//        ash.weightInKilos = 70;
//        ash.employeeID = 12;
//        ash.hireDate = [NSDate dateWithNaturalLanguageString:@"Aug 2nd, 2010"];
//
////        float height = [ash heightInMeters];
////        int weight = [ash weightInKilos];
////        NSLog(@"Ash is %.2f meters tall and weights %d kilograms", height, weight);
//        NSLog(@"Ash is %.2f meters tall and weights %d kilograms", ash.heightInMeters, ash.weightInKilos);
//        NSLog(@"Employee %u hired on %@", ash.employeeID, ash.hireDate);
//
//        NSDate *date = ash.hireDate;
//        NSLog(@"%@ hired on %@", ash, date);
//
//        float bmi = [ash bodyMassIndex];
//        NSLog(@"ash has BMI of %.2f", bmi);
//        double years = [ash yearsOfEmployment];
//        NSLog(@"Ash has worked with us for %.2f", years);
//
//
////        NSMutableArray *test_array = [NSMutableArray new];
////        [ash addYourselfToArray:test_array];
////        NSLog(@"%p", test_array[0]);
////        NSLog(@"%p", ash);
        
        NSMutableArray *employees = [[NSMutableArray alloc] init];
        
        NSMutableDictionary *executives = [[NSMutableDictionary alloc]init];
        
        for (int i = 0; i < 10; i ++) {
            BNREmployee *person = [[BNREmployee alloc] init];
            person.weightInKilos = 90 + i;
            person.heightInMeters = 1.8 - (i / 10.0);
            person.employeeID = i;
            
            [employees addObject:person];
            
            if (i == 0) {
                [executives setObject:person forKey:@"CEO"];
            }
            
            if (i == 1) {
                [executives setObject:person forKey:@"CTO"];
            }
        }
        
        NSMutableArray *allAssets = [[NSMutableArray alloc] init];
        
        for (int i = 0; i < 10; i ++) {
            BNRAsset *asset = [[BNRAsset alloc] init];
            asset.label = [NSString stringWithFormat:@"laptap %u", i];
            asset.resaleValue = 350 + (i * 17);
//
//            NSUInteger randomIndex = random() % [employees count];
//            BNREmployee *randomEmployee = [employees objectAtIndex: randomIndex];
            BNREmployee *person = [employees objectAtIndex: i];
            [person addAsset: asset];
//
            [allAssets addObject:asset];
        }
//        [employees removeObjectAtIndex:5];
//        __weak BNRPerson *parent;
        
        for (BNREmployee *e in employees) {
            NSLog(@"%dß", e.valueOfAssets);
            for (BNRAsset *a in e.assets) {
                NSLog(@"label: %@ resaleValue: %d", a.label, a.resaleValue);
            }
        }
        
        NSSortDescriptor *voa = [NSSortDescriptor sortDescriptorWithKey:@"valueOfAssets" ascending:NO];
        NSSortDescriptor *eid = [NSSortDescriptor sortDescriptorWithKey:@"employeeID" ascending:NO];
        [employees sortUsingDescriptors: @[voa, eid]];
        
        NSPredicate *predocate = [NSPredicate predicateWithFormat:
                                  @"holder.valueOfAssets > 400N"];
        NSArray *toBeReclaimed = [allAssets filteredArrayUsingPredicate:predocate];
        NSLog(@"toBeReclaimed: %@", toBeReclaimed);
        predocate = nil;
        toBeReclaimed = nil;
        
        NSLog(@"employees list: %@", employees);
        NSLog(@"allAssets list: %@", allAssets);
        NSLog(@"executives: %@", executives);
        NSLog(@"CEO: %@", executives[@"CEO"]);
        
        executives = nil;
        employees = nil;
        allAssets = nil;
    }
    return 0;
}
