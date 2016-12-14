//
//  NotificationView.m
//  NZEOI
//
//  Created by Jacob Li on 14/12/2016.
//  Copyright © 2016 Jacob Li. All rights reserved.
//

#import "NotificationView.h"
#import "Common.h"

@implementation NotificationView


// 提示框
- (NotificationView*) initNotifyViewWithTitle:(NSString*) title isSuccess:(BOOL)isSuccess{
    self = [super initWithFrame:CGRectMake(kScreenWidth / 2 - 100,  kScreenHeight / 2 - 120, 200, 120)];
    
    self.backgroundColor = [UIColor blackColor];
    self.alpha = 0.8;
    self.layer.shadowColor = [UIColor blackColor].CGColor;
    self.layer.shadowOffset = CGSizeMake(4, 4);
    self.layer.shadowOpacity = 0.9;
    self.layer.shadowRadius = 4;
    [self.layer setCornerRadius:15];
    
    UIImageView *logoImageView = [[UIImageView alloc] initWithFrame:CGRectMake(70, 5, 60, 60)];
    UILabel *successLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 40, 180, 100)];
    successLabel.text = title;
    successLabel.numberOfLines = 0;
    successLabel.backgroundColor = [UIColor clearColor];
    successLabel.textAlignment = NSTextAlignmentCenter;
    successLabel.textColor = [UIColor whiteColor];
    successLabel.adjustsFontSizeToFitWidth = YES;
    
    if (!isSuccess) {
        successLabel.font = [UIFont systemFontOfSize:14];
        logoImageView.image = [self drawingAlertLogoWithSize:CGSizeMake(30, 30)];
        [self  addSubview:logoImageView];
    } else if (isSuccess) {
        logoImageView.image = [self drawingSuccessLogoWithSize:CGSizeMake(30, 30)];
        [self addSubview:logoImageView];
    }
    
    [self addSubview:successLabel];
    
    return self;
}

- (UIImage *) drawingAlertLogoWithSize:(CGSize)size {
    UIGraphicsBeginImageContextWithOptions(size, true, 0);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetRGBStrokeColor(context, 255/255.0, 255/255.0, 255/255.0, 1);
    CGContextSetLineWidth(context, 1);
    CGContextAddArc(context, 15, 15, 8, 0, 2 * M_PI, 0);
    CGContextDrawPath(context, kCGPathStroke);
    
    CGContextMoveToPoint(context, 15, 10);
    CGContextAddLineToPoint(context, 15, 18);
    CGContextDrawPath(context, kCGPathStroke);
    
    CGContextMoveToPoint(context, 15, 20);
    CGContextAddLineToPoint(context, 15, 21);
    CGContextDrawPath(context, kCGPathStroke);
    
    return UIGraphicsGetImageFromCurrentImageContext();
}

- (UIImage *) drawingSuccessLogoWithSize:(CGSize)size {
    UIGraphicsBeginImageContextWithOptions(size, true, 0);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetRGBStrokeColor(context, 255/255.0, 255/255.0, 255/255.0, 1);
    CGContextSetLineWidth(context, 1);
    
    CGContextAddArc(context, 15, 15, 8, 0, 2 * M_PI, 0);
    CGContextDrawPath(context, kCGPathStroke);
    
    CGContextMoveToPoint(context, 10, 16);
    CGContextAddLineToPoint(context, 13, 19);
    CGContextDrawPath(context, kCGPathStroke);
    
    CGContextMoveToPoint(context, 15 + 10 * (sqrt(2) / 3), 17 - 10 * (sqrt(2) / 3));
    CGContextAddLineToPoint(context, 13.15, 19.5);
    CGContextDrawPath(context, kCGPathStroke);
    
    return UIGraphicsGetImageFromCurrentImageContext();
}


@end
