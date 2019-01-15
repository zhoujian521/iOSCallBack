//
//  ViewController.m
//  iOSCallBack
//
//  Created by zhoujian on 2019/1/15.
//  Copyright © 2019 zhoujian. All rights reserved.
//

#import "ViewController.h"
#import "SecViewController.h"
#import "Layer2Protocol.h"

@interface ViewController ()<Layer2Protocol>

@property (weak, nonatomic) IBOutlet UILabel *displayLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"push"]) {
        SecViewController *secVC =(SecViewController *)segue.destinationViewController;
        secVC.delegate = self;
    }
}

- (void)signTx:(NSDictionary *)tx{
    NSLog(@"signTx %@",tx);
}

- (NSString *)signMsg:(NSString *)msg callback:(nonnull void (^)(void))callback{
    callback();
    NSLog(@"signMsg");
    return @"NSString";
}

- (NSString *)signPersonMsg:(NSString *)msg callback:(void (^)(NSString * _Nonnull))callback{
    callback(@"signPersonMsg");
    return @"signPersonMsg";
}

- (NSString *)signTestMsg:(NSString *)msg callback:(NSString * _Nonnull (^)(NSString * _Nonnull))callback{
    NSString *personMsg = callback(@"TestMsg001");
    NSLog(@"%@",personMsg);
    return @"TestMsg003";
    
}




@end
