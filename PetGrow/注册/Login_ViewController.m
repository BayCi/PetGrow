//
//  Login_ViewController.m
//  PetGrow
//
//  Created by 妳的小可愛已上線 on 2019/4/25.
//  Copyright © 2019 妳的小可愛已上線. All rights reserved.
//

#import "Login_ViewController.h"
#import "Home_ViewController.h"
#import "Register_ViewController.h"
@interface Login_ViewController ()

@end

@implementation Login_ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"返回" style:(UIBarButtonItemStyleDone) target:self action:@selector(back)];
    Username = [[UITextField alloc]initWithFrame:CGRectMake(35, 230, 305, 40)];
    Username.font = [UIFont fontWithName:@"OriyaSangamMN-Bold" size:18.0f];
    [Username setBorderStyle:(UITextBorderStyleRoundedRect)];
    Username.clearButtonMode = UITextFieldViewModeAlways;
    Username.placeholder = @"用户名";
    [self.view addSubview:Username];
    
    Password = [[UITextField alloc]initWithFrame:CGRectMake(35, 290, 305, 40)];
    Password.font = [UIFont fontWithName:@"OriyaSangamMN-Bold" size:18.0f];
    [Password setBorderStyle:(UITextBorderStyleRoundedRect)];
    Password.clearButtonMode = UITextFieldViewModeAlways;
    Password.placeholder = @"密码";
    Password.secureTextEntry = YES;
    [self.view addSubview:Password];
    
    UIImageView *User = [[UIImageView alloc]initWithFrame:CGRectMake(145, 140, 85, 80)];
    User.image = [UIImage imageNamed:@"touxiang.png"];
    [self.view addSubview:User];
    
    UIButton *login = [UIButton buttonWithType:(UIButtonTypeRoundedRect)];
    login.frame = CGRectMake(35, 380, 305, 40);
    login.backgroundColor = [UIColor redColor];
    [login setTitle:@"注册" forState:(UIControlStateNormal)];
    [login setTitleColor:[UIColor whiteColor] forState:(UIControlStateNormal)];
    [login setTitleColor:[UIColor redColor] forState:(UIControlStateSelected)];
    [self.view addSubview:login];
    [login addTarget:self action:@selector(done) forControlEvents:(UIControlEventTouchUpInside)];
}

- (void)back{
    Home_ViewController *home = [[self.navigationController viewControllers]objectAtIndex:1];
    [self.navigationController popToViewController:home animated:YES];
}

- (void)done{
    if(Username.text.length!=0 && Password.text.length>=8){
        UIAlertView *alertView = [[UIAlertView alloc]initWithTitle:@"提示" message:@"注册成功，即将返回登陆页面" delegate:self cancelButtonTitle:@"确定" otherButtonTitles: nil];
        [alertView show];
        self.navigationItem.hidesBackButton = YES;
    }
    else{
        UIAlertView *alertView = [[UIAlertView alloc]initWithTitle:@"提示" message:@"注册失败，请重试！" delegate:self cancelButtonTitle:@"确定" otherButtonTitles: nil];
        [alertView show];
    }
    
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    Register_ViewController *Register = [[Register_ViewController alloc]init];
    if(buttonIndex == 0){
        Register.username = Username.text;
        Register.password = Password.text;
        [self.navigationController pushViewController:Register animated:YES];
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
