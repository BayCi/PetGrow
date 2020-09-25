//
//  Choose_ViewController.m
//  PetGrow
//
//  Created by 妳的小可愛已上線 on 2019/5/3.
//  Copyright © 2019 妳的小可愛已上線. All rights reserved.
//

#import "Choose_ViewController.h"
#import "Home_ViewController.h"
@interface Choose_ViewController ()

@end

@implementation Choose_ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImage *image1 = [UIImage imageNamed:@"Mypet.jpg"];
    UIImage *image2 = [UIImage imageNamed:@"pet1.jpg"];
    UIImage *image3 = [UIImage imageNamed:@"pet2.jpg"];
    UIImage *image4 = [UIImage imageNamed:@"pet3.jpg"];
    UIImageView *pet = [[UIImageView alloc]initWithFrame:CGRectMake(40, 218, 295, 350)];
    pet.animationImages = [NSArray arrayWithObjects:image1,image2,image3,image4, nil];
    pet.animationDuration = 4;
    [pet startAnimating];
    [self.view addSubview:pet];
    
    UILabel *word = [[UILabel alloc]initWithFrame:CGRectMake(45, 590, 285, 10)];
    word.font = [UIFont fontWithName:@"OriyaSangamMN-Bold" size:18.0f];
    word.text = @"选择你的成长玩伴来陪你一起玩吧";
    [self.view addSubview:word];
    
    UIButton *Go = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    Go.frame = CGRectMake(140, 670, 95, 45);
    [Go setBackgroundImage:[UIImage imageNamed:@"go.png"] forState:(UIControlStateNormal)];
    Go.enabled = YES;
    [self.view addSubview:Go];
    [Go addTarget:self action:@selector(Touch) forControlEvents:(UIControlEventTouchUpInside)];
    
    
}

- (void)Touch{
    Home_ViewController *home = [[Home_ViewController alloc]init];
    [self.navigationController popViewControllerAnimated:self];
    [self.navigationController pushViewController:home animated:YES];
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
