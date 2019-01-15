//
//  SecViewController.m
//  iOSCallBack
//
//  Created by zhoujian on 2019/1/15.
//  Copyright © 2019 zhoujian. All rights reserved.
//

#import "SecViewController.h"

@interface SecViewController ()

@end

@implementation SecViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"goback"]) {
        if (self.delegate) {
            NSDictionary *unsignTx = @{@"key1":@"value1",
                                       @"key2":@"value2",
                                       @"key3":@"value3",
                                       @"key4":@"value4"};
            NSString *unsignMsg = @"我怎么这么好看 这么好看怎么办";
            
            
            
            
            [self.delegate signTx:unsignTx];
            
            NSString *signMsg = [self.delegate signMsg:unsignMsg callback:^{
                NSLog(@"callback==>无参数无返回值");
            }];
            NSLog(@"signMsg==> %@",signMsg);
            
            [self.delegate signPersonMsg:unsignMsg callback:^(NSString * _Nonnull signData) {
                NSLog(@"signData==> %@",signData);
            }];
            
            NSString *testMsg = [self.delegate signTestMsg:unsignMsg callback:^NSString * _Nonnull(NSString * _Nonnull testData) {
                NSLog(@"%@",testData);
                return @"testMsg002";
            }];
            NSLog(@"%@",testMsg);
            

        }
    }
}



@end
