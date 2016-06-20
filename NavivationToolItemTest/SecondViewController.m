//
//  SecondViewController.m
//  NavivationToolItemTest
//
//  Created by Genming Zhao on 2016-06-19.
//  Copyright © 2016 Genming Zhao. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()
{
    UIButton *deleteBtn;
    UIButton *gonextBtn;
    UIButton *createnewBtn;
}
@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UIButton *returnBtn =  [UIButton buttonWithType:UIButtonTypeCustom];
    
    [returnBtn setImage:[UIImage imageNamed:@"goback.png"] forState:UIControlStateNormal];
    [returnBtn addTarget:self action:@selector(upBtnClicked:) forControlEvents:UIControlEventTouchUpInside];
    [returnBtn setFrame:CGRectMake(0, 0, 32, 32)];
    
    deleteBtn =  [UIButton buttonWithType:UIButtonTypeCustom];

    [deleteBtn addTarget:self action:@selector(upBtnClicked:) forControlEvents:UIControlEventTouchUpInside];
    [deleteBtn setFrame:CGRectMake(36, 0, 32, 32)];
    [deleteBtn setImage:[UIImage imageNamed:@"deleteorange.png"] forState:UIControlStateNormal];
    [deleteBtn setImage:[UIImage imageNamed:@"deletegray.png"] forState:UIControlStateDisabled];
    UIView *leftBarButtonItems = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 70, 32)];
    [leftBarButtonItems addSubview:returnBtn];
    [leftBarButtonItems addSubview:deleteBtn];
    
    
    //self.navigationItem.rBarButtonItem = showSettingsButton;
    
    self.navigationItem.leftBarButtonItem=[[UIBarButtonItem alloc] initWithCustomView:leftBarButtonItems];
    
    
    createnewBtn =  [UIButton buttonWithType:UIButtonTypeCustom];
    [createnewBtn setImage:[UIImage imageNamed:@"addgreen.png"] forState:UIControlStateNormal];
    [createnewBtn addTarget:self action:@selector(upBtnClicked:) forControlEvents:UIControlEventTouchUpInside];
    [createnewBtn setFrame:CGRectMake(0, 0, 32, 32)];
    
    gonextBtn =  [UIButton buttonWithType:UIButtonTypeCustom];
    [gonextBtn setTitle:@"delete" forState:UIControlStateNormal];
    [gonextBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [gonextBtn addTarget:self action:@selector(upBtnClicked:) forControlEvents:UIControlEventTouchUpInside];
    [gonextBtn setFrame:CGRectMake(36, 0, 32, 32)];
    [gonextBtn setImage:[UIImage imageNamed:@"nextgreen.png"] forState:UIControlStateNormal];
    [gonextBtn setImage:[UIImage imageNamed:@"nextgray.png"] forState:UIControlStateDisabled];
    UIView *rightBarButtonItems = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 70, 32)];
    [rightBarButtonItems addSubview:createnewBtn];
    [rightBarButtonItems addSubview:gonextBtn];
    
    gonextBtn.enabled     =NO;
    createnewBtn.enabled  =NO;
    deleteBtn.enabled     =NO;
    
    self.navigationItem.rightBarButtonItem=[[UIBarButtonItem alloc] initWithCustomView:rightBarButtonItems];
    
    
    
    
    //***********************those buttons should be at bottoms****************************////
    
    
    [self.navigationController setToolbarHidden:NO];
    
    
    UIBarButtonItem *leftButton = [[UIBarButtonItem alloc] initWithTitle:@"Item" style:UIBarButtonItemStylePlain target:self action:@selector(btnPressed:)];
    
    UIBarButtonItem *flex = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:self action:nil];
    
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithTitle:@"Item" style:UIBarButtonItemStylePlain target:self action:@selector(btnPressed:)];
    
    UIBarButtonItem* button1 = [[UIBarButtonItem alloc] initWithTitle:@"Delete"
                                                                style:UIBarButtonItemStylePlain
                                                               target:self action:@selector(btnPressed:)];
    [self setToolbarItems:[NSArray arrayWithObjects:button1,leftButton,flex,rightButton, nil]];

    
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)btnPressed:(id)sender{
    NSLog(@"bottom button pressed");
}
-(IBAction)upBtnClicked:(id)sender{
    NSLog(@"up button pressed");
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
