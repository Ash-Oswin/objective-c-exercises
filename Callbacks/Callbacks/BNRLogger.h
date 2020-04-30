//
//  BNRLogger.h
//  Callbacks
//
//  Created by 谢政 on 2020/4/28.
//  Copyright © 2020 maimemo. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BNRLogger : NSObject
    <NSURLConnectionDelegate, NSURLConnectionDataDelegate>
{
    NSMutableData *_incomingData;
}

@property (nonatomic) NSDate *lastTime;
- (NSString *) lastTimeString;
- (void) updateLastTime:(NSTimer *)t;
- (void) zoneChange: (NSNotification *)note;

- (void) connection:(NSURLConnection *)connection didReceiveData:(NSData *)data;
- (void) connectionDidFinishLoading:(NSURLConnection *)connection;
- (void) connection:(NSURLConnection *)connection didFailWithError:(NSError *)error;
@end

NS_ASSUME_NONNULL_END
