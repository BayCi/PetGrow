//
//  User_ViewController.m
//  PetGrow
//
//  Created by 妳的小可愛已上線 on 2019/4/27.
//  Copyright © 2019 妳的小可愛已上線. All rights reserved.
//

#import "User_ViewController.h"
#import "Gift_ViewController.h"
#import "Register_ViewController.h"
#import "illustratedBook_ViewController.h"
@interface User_ViewController ()

@end

@implementation User_ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIBarButtonItem *Camera = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:(UIBarButtonSystemItemCamera) target:self action:@selector(pictureEvents)];
    [self.navigationItem setLeftBarButtonItem:Camera];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"Home" style:(UIBarButtonItemStyleDone) target:self action:@selector(home)];
    Name = [[UILabel alloc]initWithFrame:CGRectMake(95, 140, 185, 50)];
    Name.textAlignment = NSTextAlignmentCenter;
    Name.text = @"名字";
    [Name setFont:[UIFont fontWithName:@"OriyaSangamMN-Bold" size:24.0f]];
    [Name setTextColor:[UIColor blackColor]];
    [self.view addSubview:Name];
    
    UILabel *Stage = [[UILabel alloc]initWithFrame:CGRectMake(145, 210, 85, 20)];
    Stage.textAlignment = NSTextAlignmentCenter;
    Stage.text = @"成长阶段";
    [Stage setFont:[UIFont fontWithName:@"OriyaSangamMN-Bold" size:18.0f]];
    [Stage setTextColor:[UIColor blackColor]];
    [self.view addSubview:Stage];
    
    Pet = [[UIImageView alloc]initWithFrame:CGRectMake(135, 260, 105, 105)];
    Pet.image = [UIImage imageNamed:@"Mypet.png"];
    [self.view addSubview:Pet];
    
    UIButton *Total = [UIButton buttonWithType:(UIButtonTypeRoundedRect)];
    Total.frame = CGRectMake(110, 460, 155, 30);
    [Total setTitle:@"累计礼物" forState:(UIControlStateNormal)];
    [Total setTitleColor:[UIColor blackColor] forState:(UIControlStateNormal)];
    [Total setFont:[UIFont fontWithName:@"OriyaSangamMN-Bold" size:24.0f]];
    [self.view addSubview:Total];
    [Total addTarget:self action:@selector(total_click) forControlEvents:(UIControlEventTouchUpInside)];
    
    UIButton *illustrated = [UIButton buttonWithType:(UIButtonTypeRoundedRect)];
    illustrated.frame = CGRectMake(110, 510, 155, 30);
    [illustrated setTitle:@"宠物图鉴" forState:(UIControlStateNormal)];
    [illustrated setTitleColor:[UIColor blackColor] forState:(UIControlStateNormal)];
    [illustrated setFont:[UIFont fontWithName:@"OriyaSangamMN-Bold" size:24.0f]];
    [self.view addSubview:illustrated];
    [illustrated addTarget:self action:@selector(illustrated_click) forControlEvents:(UIControlEventTouchUpInside)];
    
    UIButton *Account = [UIButton buttonWithType:(UIButtonTypeRoundedRect)];
    Account.frame = CGRectMake(110, 560, 155, 30);
    [Account setTitle:@"登陆账号" forState:(UIControlStateNormal)];
    [Account setTitleColor:[UIColor blackColor] forState:(UIControlStateNormal)];
    [Account setFont:[UIFont fontWithName:@"OriyaSangamMN-Bold" size:24.0f]];
    [self.view addSubview:Account];
    [Account addTarget:self action:@selector(account_click) forControlEvents:(UIControlEventTouchUpInside)];
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *value = [defaults valueForKey:@"value"];
    if (value!=NULL){
        Name.text = value;
    }
}

- (void)changeValue:(NSNotification *)notification{
    id value = notification.object;
    Name.text = value;
}

- (void)pictureEvents{
    UIImagePickerControllerSourceType sourceType = UIImagePickerControllerSourceTypeCamera;
    if (![UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]){
        sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    }
    UIImagePickerController *picker = [[UIImagePickerController alloc]init];
    picker.delegate = self;
    picker.allowsEditing = YES;
    picker.sourceType = sourceType;
    picker.modalPresentationStyle = UIModalPresentationPageSheet;
    picker.modalTransitionStyle = UIModalTransitionStylePartialCurl;
    [self presentViewController:picker animated:YES completion:^{}];
}

- (void)editImage:(UIImage *)image{
    [Pet setImage:image];
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingImage:(nonnull UIImage *)image editingInfo:(nullable NSDictionary<UIImagePickerControllerInfoKey,id> *)editingInfo{
    [picker dismissModalViewControllerAnimated:YES];
    [self performSelector:@selector(editImage:) withObject:image afterDelay:1.0];
}

- (void)home{
    [self.navigationController popViewControllerAnimated:self];
}

- (void)total_click{
    Gift_ViewController *gift = [[Gift_ViewController alloc]init];
    [self.navigationController pushViewController:gift animated:YES];
}

- (void)illustrated_click{
    illustratedBook_ViewController *illustratedBook = [[illustratedBook_ViewController alloc]init];
    [self.navigationController pushViewController:illustratedBook animated:YES];
}

- (void)account_click{
    Register_ViewController *Register = [[Register_ViewController alloc]init];
    [self.navigationController pushViewController:Register animated:YES];
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
