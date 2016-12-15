//
//  SelectQuestionView.h
//  NZEOI
//
//  Created by Jacob Li on 15/12/2016.
//  Copyright © 2016 Jacob Li. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "QuestionModel.h"
@interface SelectQuestionView : UIView
- (SelectQuestionView *) initWithQuestionModel:(QuestionModel *) questionModel andFrame:(CGRect) frame;
@property QuestionModel *mQuestionModel;
@property (weak, nonatomic) UILabel *titleLabel;

@end
