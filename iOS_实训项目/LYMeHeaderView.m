//
//  LYMeHeaderView.m
//  iOS_实训项目
//
//  Created by lysongzi on 16/4/4.
//  Copyright © 2016年 顾金跃. All rights reserved.
//

#import "LYMeHeaderView.h"

@implementation LYMeHeaderView

+ (instancetype)instanceWithFrame:(CGRect)frame
{
    LYMeHeaderView *view = [[[NSBundle mainBundle] loadNibNamed:@"LYMeHeaderView" owner:self options:nil] lastObject];
    view.frame = frame;
    
    //定制一些视图样式
    [view.userImg.layer setCornerRadius:view.userImg.frame.size.width / 2];
    [view.userImg.layer setMasksToBounds:YES];
    
    [view.userImg.layer setBorderWidth:3.0];
    [view.userImg.layer setBorderColor:[[UIColor colorWithWhite:0.902 alpha:0.500] CGColor]];
    
    return view;
}

@end
