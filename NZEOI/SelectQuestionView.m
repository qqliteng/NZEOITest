//
//  SelectQuestionView.m
//  NZEOI
//
//  Created by Jacob Li on 15/12/2016.
//  Copyright © 2016 Jacob Li. All rights reserved.
//

#import "SelectQuestionView.h"
static int QID = 0;
@implementation SelectQuestionView

- (SelectQuestionView *)initWithQuestionModel:(QuestionModel *)questionModel andFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        QID ++;
        self.mQuestionModel = questionModel;
        [self createView];
    }
    return self;
}

- (void) createView {
    self.titleLabel = [[UILabel alloc]initWithFrame:CGRectMake(30, 20, self.frame.size.width - 30, 30)];
    [self.titleLabel setTextAlignment:NSTextAlignmentLeft];
    [self.titleLabel setTextColor:[UIColor darkGrayColor]];
    [self.titleLabel setFont:[UIFont fontWithName:@"STSong" size:20]];
    [self.titleLabel setText:[NSString stringWithFormat:@"%d: %@", QID, [self.mQuestionModel title]]];
    [self addSubview:self.titleLabel];
    CGFloat optionYPosition = self.titleLabel.frame.origin.y + 40;
    for (NSString *option in [self.mQuestionModel options]) {
        UIButton *optionButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [optionButton setFrame:CGRectMake(30, optionYPosition, self.frame.size.width - 60, 30)];
        [optionButton setImage:[UIImage imageNamed:@"radioButtonNormal"] forState:UIControlStateNormal];
        [optionButton setImage:[UIImage imageNamed:@"radioButtonSelected"] forState:UIControlStateSelected];
        [optionButton setTitle:option forState:UIControlStateNormal];
        [optionButton.titleLabel setTextAlignment:NSTextAlignmentRight];
        [optionButton setContentHorizontalAlignment:UIControlContentHorizontalAlignmentLeft];
        [optionButton.titleLabel setFont:[UIFont fontWithName:@"STSong" size:20]];
        [optionButton.titleLabel setNumberOfLines:0];
        CGRect buttonRect = [option boundingRectWithSize:CGSizeMake(self.frame.size.width - 40, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:optionButton.titleLabel.font} context:nil];
        if (buttonRect.size.height > 30) {
            [optionButton setTitleEdgeInsets:UIEdgeInsetsMake(buttonRect.size.height - 23, 20, 0, 0)];
        } else {
            [optionButton setTitleEdgeInsets:UIEdgeInsetsMake(0, 20, 0, 0)];
        }
        [optionButton.titleLabel setFrame:CGRectMake(optionButton.titleLabel.frame.origin.x, optionButton.titleLabel.frame.origin.y, optionButton.titleLabel.frame.size.width, buttonRect.size.height + 10)];
        [optionButton setImageEdgeInsets:UIEdgeInsetsMake(25, 20, 25, 25)];
        [optionButton.imageView setContentMode:UIViewContentModeScaleAspectFit];
        
        [optionButton setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
        optionYPosition += 30;
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
