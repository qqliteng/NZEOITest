//
//  QuestionModel.h
//  NZEOI
//
//  Created by Jacob Li on 14/12/2016.
//  Copyright © 2016 Jacob Li. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QuestionModel : NSObject
- (QuestionModel *) initWithTitle:(NSString *) title Options:(NSArray *)options andValue:(NSDictionary *)value;
@property NSString *title;
@property NSArray *options;
@property NSDictionary *value;
@end
