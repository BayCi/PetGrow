//
//  Award_ViewController.m
//  PetGrow
//
//  Created by 妳的小可愛已上線 on 2019/7/3.
//  Copyright © 2019 妳的小可愛已上線. All rights reserved.
//

#import "Award_ViewController.h"

@interface Award_ViewController ()

@end

@implementation Award_ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImageView *award = [[UIImageView alloc]initWithFrame:CGRectMake(50, 120, 272, 420)];
    award.image = [UIImage imageNamed:@"award.png"];
    [self.view addSubview:award];
    
    UILabel *word = [[UILabel alloc]initWithFrame:CGRectMake(86, 570, 200, 50)];
    word.numberOfLines = 2;
    word.text = @"恭喜你又完成了一个打卡\n你的小宠物又长大了一点!";
    [self.view addSubview:word];
    
    UIButton *sure = [UIButton buttonWithType:(UIButtonTypeRoundedRect)];
    sure.frame = CGRectMake(146, 650, 80, 40);
    [sure setTitle:@"确定" forState:(UIControlStateNormal)];
    sure.font = [UIFont fontWithName:@"Marion" size:20];
    [sure addTarget:self action:@selector(done) forControlEvents:(UIControlEventTouchUpInside)];
    [self.view addSubview:sure];
}

- (void)done{
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
