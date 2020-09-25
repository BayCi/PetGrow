//
//  Plan_ViewController.m
//  PetGrow
//
//  Created by 妳的小可愛已上線 on 2019/4/25.
//  Copyright © 2019 妳的小可愛已上線. All rights reserved.
//

#import "Plan_ViewController.h"
#import "Home_ViewController.h"
#import "Clock_ViewController.h"
#import "Award_ViewController.h"
@interface Plan_ViewController ()

@end

@implementation Plan_ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"返回" style:(UIBarButtonItemStyleDone) target:self action:@selector(back)];
    
    UITableView *plan = [[UITableView alloc]initWithFrame:[UIScreen mainScreen].bounds style:UITableViewStyleGrouped];
    [plan setDelegate:self];
    [plan setDataSource:self];
    [self.view addSubview:plan];
    
    UIButton *add = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    add.frame = CGRectMake(165, 720, 45, 45);
    [add setBackgroundImage:[UIImage imageNamed:@"plus.png"] forState:(UIControlStateNormal)];
    add.enabled = YES;
    [self.view addSubview:add];
    [add addTarget:self action:@selector(add_click) forControlEvents:(UIControlEventTouchUpInside)];
}

- (void)back{
    Home_ViewController *home = [[self.navigationController viewControllers]objectAtIndex:1];
    [self.navigationController popToViewController:home animated:YES];
}

- (void)add_click{
    Clock_ViewController *clock = [[Clock_ViewController alloc]init];
    [self.navigationController pushViewController:clock animated:YES];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if (section == 0){
        return 1;
    }
    return 3;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    switch (section){
        case 0:return @"已完成";
        case 1:return @"正在进行";
        default:return 0;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSInteger section = indexPath.section;
    NSInteger row = indexPath.row;
    static NSString *CellIdentifier = @"计划已确立！";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if(cell == nil){
        cell = [[UITableViewCell alloc]initWithStyle:(UITableViewCellStyleDefault) reuseIdentifier:CellIdentifier];
        
        switch (section){
            case 0:cell.textLabel.text = @"按时吃饭";
                cell.imageView.image = [UIImage imageNamed:@"eat.png"];
                cell.accessoryType = UITableViewCellAccessoryCheckmark;
                break;
            case 1:
                switch (row){
                    case 0:cell.textLabel.text = @"按时锻炼";
                        cell.imageView.image = [UIImage imageNamed:@"exercise.png"];
                        cell.accessoryType = UITableViewCellAccessoryDetailDisclosureButton;
                        cell.tintColor = [UIColor lightGrayColor];
                        break;
                    case 1:cell.textLabel.text = @"按时睡觉";
                        cell.imageView.image = [UIImage imageNamed:@"sleep.png"];
                        cell.accessoryType = UITableViewCellAccessoryDetailDisclosureButton;
                        cell.tintColor = [UIColor lightGrayColor];
                        break;
                    case 2:cell.textLabel.text = @"学习";
                        cell.imageView.image = [UIImage imageNamed:@"pencil.png"];
                        cell.accessoryType = UITableViewCellAccessoryDetailDisclosureButton;
                        cell.tintColor = [UIColor lightGrayColor];
                }
                break;
                
        }
        tableView.rowHeight = 90;
        
    }
    return cell;
}

- (void)tableView:(UITableView *)tableView accessoryButtonTappedForRowWithIndexPath:(NSIndexPath *)indexPath{
    UIAlertView *tips = [[UIAlertView alloc]initWithTitle:@"提示" message:@"今天的任务还没有完成哦，请继续完成，加油！" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil];
    [tips show];
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
