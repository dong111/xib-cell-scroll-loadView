//
//  CDGroupBuyingCell.h
//  16-02-04-熔炼-(UITableView自定义Cell)
//
//  Created by 陈栋 on 16/2/4.
//  Copyright © 2016年 man. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CDGroupBuying.h"

@interface CDGroupBuyingCell : UITableViewCell
//集成团购数据对象
@property (nonatomic,strong) CDGroupBuying *groupBuying;
//返回可重用的自定义对象cell
+ (instancetype) groupBuytingCellWithTableView:(UITableView *)tableView;


@end
