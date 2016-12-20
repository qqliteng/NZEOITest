//
//  ViewController.m
//  NZEOI
//
//  Created by Jacob Li on 14/12/2016.
//  Copyright © 2016 Jacob Li. All rights reserved.
//

#import "ViewController.h"
#import "NZEOIViewController.h"
#import "Common.h"
#import "UIColor+StringServer.h"
@interface ViewController ()
@property (strong, nonatomic) UIButton *NZButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor hexStringToColor:@"f3f3f3"]];
    self.NZButton = [[UIButton alloc] initWithFrame:CGRectMake(60, 80, kScreenWidth - 120, 200)];
    [self.NZButton setImage:[UIImage imageNamed:@"NZFlag"] forState:UIControlStateNormal];
    [self.NZButton addTarget:self action:@selector(NZTechEOIButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.NZButton setTitle:@"新西兰技术移民" forState:UIControlStateNormal];
    [self.NZButton setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
    [self.NZButton setContentHorizontalAlignment:UIControlContentHorizontalAlignmentCenter];
    [self.NZButton.titleLabel setFont:[UIFont fontWithName:@"STSong" size:20]];
    [self.NZButton setImageEdgeInsets:UIEdgeInsetsMake(5, 95, 50, 30)];
    [self.NZButton setTitleEdgeInsets:UIEdgeInsetsMake(55, -90, 5, 5)];
    [self.view addSubview:self.NZButton];
    // Do any additional setup after loading the view, typically from a nib.
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)NZTechEOIButtonAction:(id)sender {
    NZEOIViewController *nzEOIVC = [[NZEOIViewController alloc] init];
    [nzEOIVC setModalTransitionStyle:UIModalTransitionStyleFlipHorizontal];
    [self presentViewController:nzEOIVC animated:YES completion:nil];
}
@end
