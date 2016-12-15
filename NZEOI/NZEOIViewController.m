//
//  NZEOIViewController.m
//  NZEOI
//
//  Created by Jacob Li on 14/12/2016.
//  Copyright © 2016 Jacob Li. All rights reserved.
//

#import "NZEOIViewController.h"
#import "QuestionModel.h"
#import "SelectQuestionView.h"
#import "Common.h"
@interface NZEOIViewController ()

@end

@implementation NZEOIViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray *tempArray = [NSArray arrayWithObjects:@"未满20岁",@"20-29岁",@"30-39岁",@"40-44岁",@"45-49岁",@"50-55岁", nil];
    NSDictionary *tempDic = [NSDictionary dictionaryWithObjectsAndKeys:@"未满20岁", @"0", @"20-29岁", @"30", @"30-39岁", @"25", @"40-44岁",@"20", @"45-49岁", @"10", @"50-55岁", @"5", nil];
    QuestionModel *ageQuestionModel = [[QuestionModel alloc]initWithTitle:@"年龄" Options:tempArray andValue:tempDic];
    SelectQuestionView *ageQuestionView = [[SelectQuestionView alloc] initWithQuestionModel:ageQuestionModel andFrame:CGRectMake(0, kNavTabHeight + 20, kScreenWidth, (tempArray.count + 1) * 40)];
    [self.NZEOIScrollView addSubview:ageQuestionView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
