//
//  SelectQuestionView.m
//  NZEOI
//
//  Created by Jacob Li on 15/12/2016.
//  Copyright © 2016 Jacob Li. All rights reserved.
//

#import "SelectQuestionView.h"

@implementation SelectQuestionView
- (SelectQuestionView *)initWithQuestionModel:(QuestionModel *)questionModel andFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.mQuestionModel = questionModel;
        [self createView];
    }
    return self;
}

- (void) createView {
    [self.titleLabel setFrame:CGRectMake(10, 10, self.frame.size.width - 20, 30)];
    [self.titleLabel setText:[self.mQuestionModel title]];
    [self addSubview:self.titleLabel];
    CGFloat optionYPosition = self.titleLabel.frame.origin.y + 40;
    for (NSString *option in [self.mQuestionModel options]) {
        UIButton *optionButton = [[UIButton alloc] initWithFrame:CGRectMake(20, optionYPosition, self.frame.size.width - 40, 30)];
        [optionButton setTitle:option forState:UIControlStateNormal];
        [optionButton setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
        optionYPosition += 40;
        [self addSubview:optionButton];
    }
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
