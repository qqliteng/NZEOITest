//
//  NotificationView.h
//  NZEOI
//
//  Created by Jacob Li on 14/12/2016.
//  Copyright © 2016 Jacob Li. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NotificationView : UIView
- (NotificationView*) initNotifyViewWithTitle:(NSString*) title isSuccess:(BOOL)isSuccess;
@end
