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
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)NZTechEOIButton:(id)sender {
    NZEOIViewController *nzEOIVC = [[NZEOIViewController alloc] init];
    [self.navigationController pushViewController:nzEOIVC animated:YES];
}
@end
