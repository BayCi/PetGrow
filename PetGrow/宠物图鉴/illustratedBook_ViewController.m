//
//  illustratedBook_ViewController.m
//  PetGrow
//
//  Created by 妳的小可愛已上線 on 2019/4/29.
//  Copyright © 2019 妳的小可愛已上線. All rights reserved.
//

#import "illustratedBook_ViewController.h"

@interface illustratedBook_ViewController ()

@end

@implementation illustratedBook_ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"返回" style:(UIBarButtonItemStyleDone) target:self action:@selector(back)];
    
    UIImageView *pets = [[UIImageView alloc]initWithFrame:CGRectMake(0, 88, 375, 690)];
    pets.image = [UIImage imageNamed:@"pets.jpg"];
    [self.view addSubview:pets];
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
