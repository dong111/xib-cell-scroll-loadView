//
//  CDGroupBuyingCell.m
//  16-02-04-熔炼-(UITableView自定义Cell)
//
//  Created by 陈栋 on 16/2/4.
//  Copyright © 2016年 man. All rights reserved.
//

#import "CDGroupBuyingCell.h"

@interface CDGroupBuyingCell ()
@property (weak, nonatomic) IBOutlet UIImageView *iconView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *priceLable;
@property (weak, nonatomic) IBOutlet UILabel *salesLable;

@end

@implementation CDGroupBuyingCell

//构建table的cell缓冲池,返回可重用的cell对象
+ (instancetype)groupBuytingCellWithTableView:(UITableView *)tableView
{
    NSString *cellPoolId = @"tg";
    CDGroupBuyingCell *cell = [tableView dequeueReusableCellWithIdentifier:cellPoolId];
    
    if (cell==nil) {
        cell = [[[NSBundle mainBundle] loadNibNamed:@"CDGroupBuyingCell" owner:nil options:nil] lastObject];
    }
    
    return cell;
}



//重写属性的setter的方法，给子控件赋值
- (void)setGroupBuying:(CDGroupBuying *)groupBuying
{
    _groupBuying = groupBuying;
    
    self.iconView.image = [UIImage imageNamed:groupBuying.icon];
    self.titleLabel.text = groupBuying.title;
    self.priceLable.text = [NSString stringWithFormat:@"￥ %@",groupBuying.price];
    self.salesLable.text = [NSString stringWithFormat:@"%@已购买",groupBuying.buyCount];
    
    
}

















@end
