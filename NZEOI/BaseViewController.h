//
//  BaseViewController.h
//  NZEOI
//
//  Created by Jacob Li on 14/12/2016.
//  Copyright © 2016 Jacob Li. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseViewController : UIViewController
- (void)showSuccessPopWithTitle:(NSString *) title;
- (void)showFailPopWithTitle:(NSString *) title;
@end
