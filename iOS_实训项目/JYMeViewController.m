//
//  JYMeViewController.m
//  iOS_实训项目
//
//  Created by 顾金跃 on 16/4/3.
//  Copyright © 2016年 顾金跃. All rights reserved.
//

#import "JYMeViewController.h"
#import "LYMeHeaderView.h"
#import "LYSettingModel.h"

@interface JYMeViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UIView *headerView;
@property (nonatomic, strong) UITableView *tableView;

@property (nonatomic, strong) NSArray *data;

@end

@implementation JYMeViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.tableView setBackgroundColor:[UIColor colorWithWhite:0.800 alpha:1.000]];
    LYMeHeaderView *header = [LYMeHeaderView instanceWithFrame:CGRectMake(0, -220, self.view.frame.size.width, 220)];
    
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStyleGrouped];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    [self.tableView addSubview:header];
    [self.tableView setContentInset:UIEdgeInsetsMake(166, 0, 0, 0)];
    
    [self.view addSubview:self.tableView];
    
    self.data = @[@[[[LYSettingModel alloc] initWithName:@"付款" desc:@"向商家出示您的付款码" image:@"setting01"]],
    @[[[LYSettingModel alloc] initWithName:@"元宝" desc:@"您有0个元包可用" image:@"setting02"],
      [[LYSettingModel alloc] initWithName:@"卡券包" desc:nil image:@"setting02"],
      [[LYSettingModel alloc] initWithName:@"订单" desc:@"查看所有交易订单" image:@"setting02"],
      [[LYSettingModel alloc] initWithName:@"工具" desc:@"领号排队,停车缴费" image:@"setting02"]],
    @[[[LYSettingModel alloc] initWithName:@"关注我们" desc:nil image:@"setting03"],
      [[LYSettingModel alloc] initWithName:@"喵客服" desc:nil image:@"setting03"]]];
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
}

#pragma mark -

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identifier = @"cell";
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:identifier];
    }
    
    LYSettingModel *model = self.data[indexPath.section][indexPath.row];
    cell.textLabel.text = model.name;
    cell.textLabel.font = [UIFont systemFontOfSize:14];
    
    cell.imageView.image = [UIImage imageNamed:model.imgURL];
    
    if (model.desc) {
        NSLog(@"%@", model.desc);
        cell.detailTextLabel.text = @"shenmeme ";
        //cell.detailTextLabel.font = [UIFont systemFontOfSize:12];
        //cell.detailTextLabel.textColor = [UIColor blackColor];
    }
    else{
        cell.detailTextLabel.text = @"dsfsdfds";
    }
    
    return cell;
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.data[section] count];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return [self.data count];
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    if (section == 0) {
        return 10;
    }
    return 5;
}

-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    if (section == self.data.count - 1) {
        return 10;
    }
    return 5;
}

@end
