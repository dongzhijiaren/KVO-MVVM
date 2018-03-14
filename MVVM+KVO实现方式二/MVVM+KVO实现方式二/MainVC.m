//
//  MainVC.m
//  MVVM+KVO实现方式二
//
//  Created by ZhangDong on 2018/3/14.
//  Copyright © 2018年 东之家人. All rights reserved.
//

#import "MainVC.h"
#import "Person.h"
#import "personView.h"
#import "PersonViewModel.h"

@interface MainVC ()

@property(nonatomic,strong)Person *person;
@property(nonatomic,strong)personView *view_person;
@property(nonatomic,strong)PersonViewModel *viewmodel_person;

@end

@implementation MainVC

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    
    self.person = [Person new];
    self.person.name = @"我小时候外号叫糯米粽子";
    
    self.view_person = [personView new];
    self.view_person.frame = self.view.bounds;
    [self.view addSubview:self.view_person];
    
    self.viewmodel_person = [PersonViewModel new];
    
    //把model和viewmodel绑定到一起
    self.viewmodel_person.person = self.person;
    //把viewmodel和view绑定到一起（用kvo来实现）
    self.view_person.vm = self.viewmodel_person;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}



@end
