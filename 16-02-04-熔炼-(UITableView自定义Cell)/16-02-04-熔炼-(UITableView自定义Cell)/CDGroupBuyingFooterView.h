//
//  CDGroupBuyingFooterView.h
//  16-02-04-熔炼-(UITableView自定义Cell)
//
//  Created by 陈栋 on 16/2/4.
//  Copyright © 2016年 man. All rights reserved.
//

#import <UIKit/UIKit.h>
@class CDGroupBuyingFooterView;

//第一步:定义代理协议
@protocol CDGroupBuyingFooterDelegate <NSObject>

@optional
- (void)footerViewDidClickedMoreBtn:(CDGroupBuyingFooterView *)footerView;

@end

@interface CDGroupBuyingFooterView : UIView
//第二步:定义代理属性
@property (nonatomic,weak) id<CDGroupBuyingFooterDelegate> delegate;

//返回footerView
+(instancetype)footerView;
@end
