//
//  Clock_ViewController.m
//  PetGrow
//
//  Created by 妳的小可愛已上線 on 2019/4/25.
//  Copyright © 2019 妳的小可愛已上線. All rights reserved.
//

#import "Clock_ViewController.h"
#import "Plan_ViewController.h"
#import "Home_ViewController.h"
#import "Register_ViewController.h"
@interface Clock_ViewController ()

@end

@implementation Clock_ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"返回" style:(UIBarButtonItemStyleDone) target:self action:@selector(back)];
    
    UILabel *daily = [[UILabel alloc]initWithFrame:CGRectMake(70, 150, 235, 60)];
    daily.font = [UIFont fontWithName:@"OriyaSangamMN-Bold" size:18.0f];
    daily.text = @"    现在是xxxxx（时间）\n下面小朋友要做什么了呢？";
    daily.numberOfLines = 2;
    [daily sizeToFit];
    [self.view addSubview:daily];
    
    UIButton *eat = [UIButton buttonWithType:(UIButtonTypeRoundedRect)];
    eat.frame = CGRectMake(70, 240, 100, 100);
    [eat setBackgroundImage:[UIImage imageNamed:@"eat.png"] forState:(UIControlStateNormal)];
    [self.view addSubview:eat];
    [eat addTarget:self action:@selector(click) forControlEvents:(UIControlEventTouchUpInside)];
    
    UILabel *eat_label = [[UILabel alloc]initWithFrame:CGRectMake(100, 340, 50, 10)];
    eat_label.text = @"吃饭";
    [self.view addSubview:eat_label];
    
    UIButton *sleep = [UIButton buttonWithType:(UIButtonTypeRoundedRect)];
    sleep.frame = CGRectMake(215, 240, 90, 90);
    [sleep setBackgroundImage:[UIImage imageNamed:@"sleep.png"] forState:(UIControlStateNormal)];
    [self.view addSubview:sleep];
    [sleep addTarget:self action:@selector(click) forControlEvents:(UIControlEventTouchUpInside)];
    UILabel *sleep_label = [[UILabel alloc]initWithFrame:CGRectMake(245, 340, 50, 10)];
    sleep_label.text = @"睡觉";
    [self.view addSubview:sleep_label];
    
    UIButton *study = [UIButton buttonWithType:(UIButtonTypeRoundedRect)];
    study.frame = CGRectMake(70, 420, 90, 90);
    [study setBackgroundImage:[UIImage imageNamed:@"pencil.png"] forState:(UIControlStateNormal)];
    [self.view addSubview:study];
    [study addTarget:self action:@selector(click) forControlEvents:(UIControlEventTouchUpInside)];
    UILabel *study_label = [[UILabel alloc]initWithFrame:CGRectMake(100, 520, 50, 10)];
    study_label.text = @"学习";
    [self.view addSubview:study_label];
    
    UIButton *exercise = [UIButton buttonWithType:(UIButtonTypeRoundedRect)];
    exercise.frame = CGRectMake(215, 420, 100, 100);
    [exercise setBackgroundImage:[UIImage imageNamed:@"exercise.png"] forState:(UIControlStateNormal)];
    [self.view addSubview:exercise];
    [exercise addTarget:self action:@selector(click) forControlEvents:(UIControlEventTouchUpInside)];
    UILabel *exercise_label = [[UILabel alloc]initWithFrame:CGRectMake(245, 520, 50, 10)];
    exercise_label.text = @"锻炼";
    [self.view addSubview:exercise_label];
    
}

- (void)back{
    [self.navigationController popViewControllerAnimated:self];
}

- (void)click{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *value = [defaults valueForKey:@"key"];
    if (value == YES){
        Plan_ViewController *plan = [[Plan_ViewController alloc]init];
        [self.navigationController pushViewController:plan animated:YES];
    }
    else{
        Register_ViewController *Rv = [[Register_ViewController alloc]init];
        [self.navigationController pushViewController:Rv animated:YES];
    }
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
