//
//  personView.m
//  MVVM+KVO实现方式二
//
//  Created by ZhangDong on 2018/3/14.
//  Copyright © 2018年 东之家人. All rights reserved.
//

#import "personView.h"

@interface personView()

@property(nonatomic,strong)UILabel *label_content;
@property(nonatomic, strong) UIButton *printButton;

@end

@implementation personView

- (instancetype)init{
    if(self == [super init]){
        
        self.label_content = [UILabel new];
        self.label_content.frame = CGRectMake(100, 100, 200, 30);
        self.label_content.textColor = [UIColor redColor];
        self.label_content.font = [UIFont systemFontOfSize:16.0];
        [self addSubview:self.label_content];
        if (!_printButton) {
            _printButton = [UIButton buttonWithType:UIButtonTypeSystem];
            [_printButton setFrame:CGRectMake(0, 300, 80, 30)];
            [_printButton setTitle:@"Print" forState:UIControlStateNormal];
            [_printButton addTarget:self
                             action:@selector(onPrintClik)
                   forControlEvents:UIControlEventTouchUpInside];
            [self addSubview:_printButton];
            
        }
    }
    return self;
}

- (void)onPrintClik{
    [self.vm onButtonClick];
}

- (void)setVm:(PersonViewModel *)vm{
    if (!_vm) {
        _vm = vm;
        [self.vm addObserver:self forKeyPath:@"content" options:NSKeyValueObservingOptionInitial|NSKeyValueObservingOptionNew context:nil];
    }
}
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context{
    
    NSString *newContent = change[NSKeyValueChangeNewKey];
    
    self.label_content.text = newContent;
}



@end
