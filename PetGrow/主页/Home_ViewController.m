//
//  Home_ViewController.m
//  PetGrow
//
//  Created by 妳的小可愛已上線 on 2019/4/25.
//  Copyright © 2019 妳的小可愛已上線. All rights reserved.
//

#import "Home_ViewController.h"
#import "Clock_ViewController.h"
#import "User_ViewController.h"
@interface Home_ViewController ()

@end

@implementation Home_ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.hidesBackButton = YES;
    
    UIImageView *pet = [[UIImageView alloc]initWithFrame:CGRectMake(40, 218, 295, 350)];
    pet.image = [UIImage imageNamed:@"Mypet.jpg"];
    [self.view addSubview:pet];
    
    UIButton *add = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    add.frame = CGRectMake(165, 720, 45, 45);
    [add setBackgroundImage:[UIImage imageNamed:@"add.png"] forState:(UIControlStateNormal)];
    add.enabled = YES;
    [self.view addSubview:add];
    [add addTarget:self action:@selector(Touch) forControlEvents:(UIControlEventTouchUpInside)];
    
    UIButton *user = [UIButton buttonWithType:(UIButtonTypeRoundedRect)];
    user.frame = CGRectMake(40, 95, 40, 40);
    [user setBackgroundImage:[UIImage imageNamed:@"touxiang.png"] forState:(UIControlStateNormal)];
    user.enabled = YES;
    [self.view addSubview:user];
    [user addTarget:self action:@selector(user_click) forControlEvents:(UIControlEventTouchUpInside)];
    
    UIButton *ar = [UIButton buttonWithType:(UIButtonTypeRoundedRect)];
    ar.frame = CGRectMake(295, 95, 40, 40);
    [ar setBackgroundImage:[UIImage imageNamed:@"gutou.png"] forState:(UIControlStateNormal)];
    ar.enabled = YES;
    [self.view addSubview:ar];
    [ar addTarget:self action:@selector(ar_click) forControlEvents:(UIControlEventTouchUpInside)];
    
//    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc]initWithTarget:self action:<#(nullable SEL)#>]
    
    
}

- (void)Touch{
    Clock_ViewController *clock = [[Clock_ViewController alloc]init];
    [self.navigationController pushViewController:clock animated:YES];
}

- (void)user_click{
    User_ViewController *user = [[User_ViewController alloc]init];
    [self.navigationController pushViewController:user animated:YES];
}


- (void)ar_click{
    UIAlertView *tip = [[UIAlertView alloc]initWithTitle:@"提示" message:@"进入AR模式" delegate:self cancelButtonTitle:@"否" otherButtonTitles:@"是", nil];
    [tip show];
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    Home_ViewController *home = [[Home_ViewController alloc]init];
    if(buttonIndex == 1){
        
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
