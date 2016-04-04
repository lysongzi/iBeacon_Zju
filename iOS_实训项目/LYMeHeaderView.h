//
//  LYMeHeaderView.h
//  iOS_实训项目
//
//  Created by lysongzi on 16/4/4.
//  Copyright © 2016年 顾金跃. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LYMeHeaderView : UIView

@property (weak, nonatomic) IBOutlet UIImageView *userImg;
@property (weak, nonatomic) IBOutlet UILabel *userName;

+ (instancetype)instanceWithFrame:(CGRect)frame;

@end
