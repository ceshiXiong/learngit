//
//  LoginViewController.m
//  MasonryDemo
//
//  Created by Faker on 16/3/24.
//  Copyright © 2016年 Jxiongzz. All rights reserved.
//

#import "LoginViewController.h"
#import <Masonry/Masonry.h>
@interface LoginViewController ()

@property (nonatomic,strong)    UITextField *   userNameTextFiel;

@property (nonatomic,strong)    UITextField *   pwdTextFilel;

@property (nonatomic,strong)    UIButton    *   loginButton;

@end

@implementation LoginViewController

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    [_userNameTextFiel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.mas_equalTo(self.view);
        make.width.mas_equalTo(150);
        make.height.mas_equalTo(40);
        
    }];
    
   [_userNameTextFiel mas_updateConstraints:^(MASConstraintMaker *make) {
       make.centerY.offset(-100);
   }];
    
    
    [_pwdTextFilel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(_userNameTextFiel.mas_bottom).offset(30);
        make.left.mas_equalTo(_userNameTextFiel);
        make.right.mas_equalTo(_userNameTextFiel);
        make.height.mas_equalTo(_userNameTextFiel);
    }];
    
    [_loginButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(_pwdTextFilel.mas_bottom).offset(30);
        make.height.width.mas_equalTo(_pwdTextFilel);
        make.left.mas_equalTo(_pwdTextFilel);
    }];
    
    

}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self.view addSubview:self.userNameTextFiel];

    [self.view addSubview:self.pwdTextFilel];
    
    [self.view addSubview:self.loginButton];
    
    
}


#pragma mark - set/get方法
- (UITextField *)userNameTextFiel
{
    if (!_userNameTextFiel) {
        _userNameTextFiel = [[UITextField alloc]init];
        _userNameTextFiel.backgroundColor = [UIColor lightGrayColor];
    }
    
    return _userNameTextFiel;
}

- (UITextField *)pwdTextFilel
{
    if (!_pwdTextFilel) {
        _pwdTextFilel = [[UITextField alloc]init];
        _pwdTextFilel.backgroundColor = [UIColor lightGrayColor];
    }
    
    return _pwdTextFilel;
}

- (UIButton *)loginButton
{
    if (!_loginButton) {
        _loginButton = [[UIButton alloc]init];
        _loginButton.backgroundColor = [UIColor redColor];
        [_loginButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_loginButton setTitle:@"登录" forState:UIControlStateNormal];
    }
    
    return _loginButton;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
