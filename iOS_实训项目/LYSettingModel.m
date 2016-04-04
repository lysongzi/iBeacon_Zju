//
//  LYSettingModel.m
//  iOS_实训项目
//
//  Created by lysongzi on 16/4/4.
//  Copyright © 2016年 顾金跃. All rights reserved.
//

#import "LYSettingModel.h"

@implementation LYSettingModel

- (instancetype)initWithName:(NSString *)name desc:(NSString *)desc image:(NSString *)imaUrl
{
    self = [super init];
    if (self) {
        _name = name;
        _desc = desc;
        _imgURL = imaUrl;
    }
    return self;
}

@end
