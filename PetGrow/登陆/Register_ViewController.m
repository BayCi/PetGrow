//
//  Register_ViewController.m
//  PetGrow
//
//  Created by 妳的小可愛已上線 on 2019/4/25.
//  Copyright © 2019 妳的小可愛已上線. All rights reserved.
//

#import "Register_ViewController.h"
#import "Home_ViewController.h"
#import "Login_ViewController.h"
#import "Plan_ViewController.h"
@interface Register_ViewController ()

@end

@implementation Register_ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"返回" style:(UIBarButtonItemStyleDone) target:self action:@selector(back)];
    
    username = [[UILabel alloc]initWithFrame:CGRectMake(40, 240, 50, 20)];
    username.font = [UIFont fontWithName:@"OriyaSangamMN-Bold" size:18.0f];
    username.text = @"账号:";
    [self.view addSubview:username];
    
    Username = [[UITextField alloc]initWithFrame:CGRectMake(90, 230, 240, 40)];
    Username.font = [UIFont fontWithName:@"OriyaSangamMN-Bold" size:18.0f];
    [Username setBorderStyle:(UITextBorderStyleRoundedRect)];
    Username.clearButtonMode = UITextFieldViewModeAlways;
    Username.returnKeyType = UIReturnKeyDone;Username.placeholder = @"输入用户名";
    Username.text = _username;
    [self.view addSubview:Username];
    
    userpsw = [[UILabel alloc]initWithFrame:CGRectMake(40, 300, 50, 20)];
    userpsw.font = [UIFont fontWithName:@"OriyaSangamMN-Bold" size:18.0f];
    userpsw.text = @"密码:";
    [self.view addSubview:userpsw];
    
    Userpsw = [[UITextField alloc]initWithFrame:CGRectMake(90, 290, 240, 40)];
    Userpsw.font = [UIFont fontWithName:@"OriyaSangamMN-Bold" size:18.0f];
    [Userpsw setBorderStyle:(UITextBorderStyleRoundedRect)];
    Userpsw.clearButtonMode = UITextFieldViewModeAlways;
    Userpsw.placeholder = @"输入密码";
    Userpsw.secureTextEntry = YES;
    [self.view addSubview:Userpsw];
    
    login = [UIButton buttonWithType:(UIButtonTypeRoundedRect)];
    login.frame = CGRectMake(40, 350, 70, 10);
    [login setTitle:@"注册账号" forState:(UIControlStateNormal)];
    [login setTitleColor:[UIColor blueColor] forState:(UIControlStateNormal)];
    [login setTitleColor:[UIColor blackColor] forState:(UIControlStateSelected)];
    [self.view addSubview:login];
    [login addTarget:self action:@selector(click) forControlEvents:(UIControlEventTouchUpInside)];
    
    UIButton *enter = [UIButton buttonWithType:(UIButtonTypeRoundedRect)];
    enter.frame = CGRectMake(40, 400, 290, 30);
    enter.backgroundColor = [UIColor redColor];
    [enter setTitle:@"登陆" forState:(UIControlStateNormal)];
    [enter setTitleColor:[UIColor whiteColor] forState:(UIControlStateNormal)];
    [enter setTitleColor:[UIColor blueColor] forState:(UIControlStateSelected)];
    [self.view addSubview:enter];
    [enter addTarget:self action:@selector(done) forControlEvents:(UIControlEventTouchUpInside)];
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setValue:Username.text forKey:@"value"];
    [defaults synchronize];
}

- (void)back{
    Home_ViewController *home = [[self.navigationController viewControllers]objectAtIndex:1];
    [self.navigationController popToViewController:home animated:YES];
}

- (void)done
{
    if (Username.text.length!=0 && Userpsw.text.length>=8 && Userpsw.text == _password && Username.text == _username){
        UIAlertView *alertView = [[UIAlertView alloc]initWithTitle:@"提示" message:@"开始打卡，请完成后签退哦！" delegate:self cancelButtonTitle:@"确定" otherButtonTitles: nil];
        [alertView show];
        
        Plan_ViewController *Pv = [[Plan_ViewController alloc]init];
        [self.navigationController pushViewController:Pv animated:YES];
    }
    else{
        UIAlertView *alertView = [[UIAlertView alloc]initWithTitle:@"提示" message:@"登陆失败，请重试！" delegate:self cancelButtonTitle:@"确定" otherButtonTitles: nil];
        [alertView show];
    }
    
}

- (void)click{
    Login_ViewController *Lv = [[Login_ViewController alloc]init];
    [self.navigationController pushViewController:Lv animated:YES];
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
