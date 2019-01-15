//
//  Layer2Protocol.h
//  iOSCallBack
//
//  Created by zhoujian on 2019/1/15.
//  Copyright © 2019 zhoujian. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef void (^SignPersonMsgCallBack)(NSString *);

typedef NSString * (^SignTestMsgCallBack)(NSString *);

@protocol Layer2Protocol <NSObject>

@required

- (void)signTx:(NSDictionary *)tx;

- (NSString *)signMsg:(NSString *)msg callback:(void (^)(void))callback;

- (NSString *)signPersonMsg:(NSString *)msg callback:(SignPersonMsgCallBack)callback;

- (NSString *)signTestMsg:(NSString *)msg callback:(SignTestMsgCallBack )callback;


@end

NS_ASSUME_NONNULL_END
