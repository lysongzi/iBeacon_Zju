//
//  LYSettingModel.h
//  iOS_实训项目
//
//  Created by lysongzi on 16/4/4.
//  Copyright © 2016年 顾金跃. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LYSettingModel : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *desc;
@property (nonatomic, strong) NSString *imgURL;

- (instancetype)initWithName:(NSString *)name desc:(NSString *)desc image:(NSString *)imaUrl;

@end
