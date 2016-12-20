//
//  ViewController.m
//  NZEOI
//
//  Created by Jacob Li on 14/12/2016.
//  Copyright © 2016 Jacob Li. All rights reserved.
//

#import "ViewController.h"
#import "NZEOIViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.NZButton setContentHorizontalAlignment:UIControlContentHorizontalAlignmentCenter];
    [self.NZButton.titleLabel setFont:[UIFont fontWithName:@"STSong" size:20]];
    [self.NZButton setImageEdgeInsets:UIEdgeInsetsMake(5, 30, 50, 30)];
    [self.NZButton setTitleEdgeInsets:UIEdgeInsetsMake(55, 5, 5, 5)];
    // Do any additional setup after loading the view, typically from a nib.
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)NZTechEOIButton:(id)sender {
    NZEOIViewController *nzEOIVC = [[NZEOIViewController alloc] init];
    [nzEOIVC setModalTransitionStyle:UIModalTransitionStyleFlipHorizontal];
    [self presentViewController:nzEOIVC animated:YES completion:nil];
}
@end
