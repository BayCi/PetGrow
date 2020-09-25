//
//  Gift_ViewController.m
//  PetGrow
//
//  Created by 妳的小可愛已上線 on 2019/4/28.
//  Copyright © 2019 妳的小可愛已上線. All rights reserved.
//

#import "Gift_ViewController.h"

@interface Gift_ViewController ()

@end

@implementation Gift_ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"返回" style:(UIBarButtonItemStyleDone) target:self action:@selector(back)];
    
    UIImageView *We = [[UIImageView alloc]initWithFrame:CGRectMake(0, 88, 375, 362)];
    We.image = [UIImage imageNamed:@"Together"];
    [self.view addSubview:We];
    
    UIImageView *Gift1 = [[UIImageView alloc]initWithFrame:CGRectMake(30, 480, 85, 85)];
    Gift1.image = [UIImage imageNamed:@"gift1"];
    [self.view addSubview:Gift1];
    UILabel *num1 = [[UILabel alloc]initWithFrame:CGRectMake(55, 580, 35, 20)];
    [num1 setTextColor:[UIColor blackColor]];
    [num1 setFont:[UIFont fontWithName:@"OriyaSangamMN-Bold" size:20.0f]];
    num1.text = @"0";
    num1.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:num1];
    
    UIImageView *Gift2 = [[UIImageView alloc]initWithFrame:CGRectMake(145, 480, 85, 85)];
    Gift2.image = [UIImage imageNamed:@"gift2"];
    [self.view addSubview:Gift2];
    UILabel *num2 = [[UILabel alloc]initWithFrame:CGRectMake(170, 580, 35, 20)];
    [num2 setTextColor:[UIColor blackColor]];
    [num2 setFont:[UIFont fontWithName:@"OriyaSangamMN-Bold" size:20.0f]];
    num2.text = @"0";
    num2.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:num2];
    
    UIImageView *Gift3 = [[UIImageView alloc]initWithFrame:CGRectMake(260, 480, 85, 85)];
    Gift3.image = [UIImage imageNamed:@"gift3"];
    [self.view addSubview:Gift3];
    UILabel *num3 = [[UILabel alloc]initWithFrame:CGRectMake(285, 580, 35, 20)];
    [num3 setTextColor:[UIColor blackColor]];
    [num3 setFont:[UIFont fontWithName:@"OriyaSangamMN-Bold" size:20.0f]];
    num3.text = @"0";
    num3.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:num3];
}

- (void)back{
    [self.navigationController popViewControllerAnimated:self];
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
