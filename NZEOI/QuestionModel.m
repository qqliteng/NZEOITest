//
//  QuestionModel.m
//  NZEOI
//
//  Created by Jacob Li on 14/12/2016.
//  Copyright © 2016 Jacob Li. All rights reserved.
//

#import "QuestionModel.h"

@implementation QuestionModel
- (QuestionModel *) initWithTitle:(NSString *) title Options:(NSArray *)options andValue:(NSDictionary *)value {
    self = [super init];
    if (self) {
        self.title = title;
        self.options = options;
        self.value = value;
    }
    
    return self;
}

@end
