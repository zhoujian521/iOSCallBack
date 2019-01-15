//
//  SecViewController.h
//  iOSCallBack
//
//  Created by zhoujian on 2019/1/15.
//  Copyright © 2019 zhoujian. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Layer2Protocol.h"

NS_ASSUME_NONNULL_BEGIN

@protocol Layer2Protocol;

@interface SecViewController : UIViewController

@property (nonatomic, assign) id<Layer2Protocol> delegate;

@end

NS_ASSUME_NONNULL_END
