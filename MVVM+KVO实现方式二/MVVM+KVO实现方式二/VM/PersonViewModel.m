//
//  PersonViewModel.m
//  MVVM+KVO实现方式二
//
//  Created by ZhangDong on 2018/3/14.
//  Copyright © 2018年 东之家人. All rights reserved.
//

#import "PersonViewModel.h"

@implementation PersonViewModel

- (void)setPerson:(Person *)person{
    
    _person = person;
    self.content = self.person.name;
    
}

- (void)onButtonClick{
    
    NSDate* dat = [NSDate dateWithTimeIntervalSinceNow:0];
    
    NSTimeInterval a=[dat timeIntervalSince1970];
    
    NSString*timeString = [NSString stringWithFormat:@"%0.f", a];//转为字符型
    
    self.content = timeString;
    
}

@end
