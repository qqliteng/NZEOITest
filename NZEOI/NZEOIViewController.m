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
#import "ViewController.h"
#import "UIColor+StringServer.h"
@interface NZEOIViewController ()

@end

@implementation NZEOIViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    basicScrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, kScreenWidth, kScreenHeight)];
    [basicScrollView setBackgroundColor:[UIColor hexStringToColor:@"f3f3f3"]];
    [self.view addSubview:basicScrollView];
    titleLable = [[UILabel alloc] initWithFrame:CGRectMake(40, 25, kScreenWidth - 40, 40)];
    [titleLable setFont:[UIFont fontWithName:@"STSong" size:28]];
    [titleLable setText:@"新西兰技术移民打分表"];
    [titleLable setTextColor:[UIColor darkGrayColor]];
    [basicScrollView addSubview:titleLable];
    UIButton *backButton = [[UIButton alloc] initWithFrame:CGRectMake(5, 35, 30, 30)];
    [backButton setImage:[UIImage imageNamed:@"backNormal"] forState:UIControlStateNormal];
    [backButton setImage:[UIImage imageNamed:@"backSelected"] forState:UIControlStateSelected];
    [backButton addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
    [basicScrollView addSubview:backButton];
    
    NSArray *tempArray = [NSArray arrayWithObjects:@"未满20岁",@"20-29岁",@"30-39岁",@"40-44岁",@"45-49岁",@"50-55岁", nil];
    NSDictionary *tempDic = [NSDictionary dictionaryWithObjectsAndKeys:@"未满20岁", @"0", @"20-29岁", @"30", @"30-39岁", @"25", @"40-44岁",@"20", @"45-49岁", @"10", @"50-55岁", @"5", nil];
    QuestionModel *ageQuestionModel = [[QuestionModel alloc]initWithTitle:@"年龄" Options:tempArray andValue:tempDic];
    SelectQuestionView *ageQuestionView = [[SelectQuestionView alloc] initWithQuestionModel:ageQuestionModel andFrame:CGRectMake(0, kNavTabHeight + 20, kScreenWidth, (tempArray.count + 1) * 40)];
    [basicScrollView addSubview:ageQuestionView];
    
    NSArray *tempArray2 = [NSArray arrayWithObjects:@"", nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) back {
    ViewController *VC = [[ViewController alloc] init];
    [VC setModalTransitionStyle:UIModalTransitionStyleFlipHorizontal];
    [self presentViewController:VC animated:YES completion:nil];
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
