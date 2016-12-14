//
//  BaseViewController.m
//  NZEOI
//
//  Created by Jacob Li on 14/12/2016.
//  Copyright © 2016 Jacob Li. All rights reserved.
//

#import "BaseViewController.h"
#import "NotificationView.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)showSuccessPopWithTitle:(NSString *)title {
    NotificationView *successView = [[NotificationView alloc] initNotifyViewWithTitle:title isSuccess:YES];
    [self.view addSubview:successView];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, 1.5 * NSEC_PER_SEC), dispatch_get_main_queue(), ^{
        [successView removeFromSuperview];
    });
}

- (void)showFailPopWithTitle:(NSString *)title {
    NotificationView *failView = [[NotificationView alloc] initNotifyViewWithTitle:title isSuccess:NO];
    [self.view addSubview:failView];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, 1.5 * NSEC_PER_SEC), dispatch_get_main_queue(), ^{
        [failView removeFromSuperview];
    });
}



@end
