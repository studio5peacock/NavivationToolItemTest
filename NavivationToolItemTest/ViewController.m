//
//  ViewController.m
//  NavivationToolItemTest
//
//  Created by Genming Zhao on 2016-06-19.
//  Copyright © 2016 Genming Zhao. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
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

- (IBAction)testBtnClicked:(id)sender {
    
    SecondViewController* secondCtrl=[[SecondViewController alloc] init];
    UINavigationController* nav=[[UINavigationController alloc] initWithRootViewController:secondCtrl];
    [self presentViewController:nav animated:YES completion:nil];
}
@end
