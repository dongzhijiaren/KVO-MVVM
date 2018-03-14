//
//  PersonViewModel.h
//  MVVM+KVO实现方式二
//
//  Created by ZhangDong on 2018/3/14.
//  Copyright © 2018年 东之家人. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@interface PersonViewModel : NSObject

@property(nonatomic,copy)NSString *content;
@property(nonatomic,strong)Person *person;

- (void)onButtonClick;

@end
