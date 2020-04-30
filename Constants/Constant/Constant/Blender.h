//
//  Blender.h
//  Constant
//
//  Created by 谢政 on 2020/4/28.
//  Copyright © 2020 maimemo. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Blender : NSObject {
    NS_ENUM(int, BlenderSpeed) {
        BlenderSpeedStir,
        BlenderSpeedChop,
        BlenderSpeedLiquify,
        BlenderSpeedPulse,
        BlenderSpeedIceCrush
    };
}
@property (nonatomic) enum BlenderSpeed speed;
@end

NS_ASSUME_NONNULL_END
