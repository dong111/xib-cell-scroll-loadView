//
//  CDGroupBuyingFooterView.m
//  16-02-04-熔炼-(UITableView自定义Cell)
//
//  Created by 陈栋 on 16/2/4.
//  Copyright © 2016年 man. All rights reserved.
//

#import "CDGroupBuyingFooterView.h"

@interface CDGroupBuyingFooterView ()

@property (weak, nonatomic) IBOutlet UIButton *loadMoreBtn;
- (IBAction)loadMoreClick:(id)sender;

@property (weak, nonatomic) IBOutlet UIView *loadMoreView;



@end

@implementation CDGroupBuyingFooterView

//返回nib中的footerView
+ (instancetype)footerView
{
    CDGroupBuyingFooterView *footerView = [[[NSBundle mainBundle] loadNibNamed:@"CDGroupBuyingFooterView" owner:nil options:nil] lastObject];
    //设置按钮圆角
    footerView.loadMoreBtn.layer.cornerRadius = 5;
    footerView.loadMoreBtn.layer.masksToBounds = YES;
    return footerView;
}

//点击加载更多按钮
- (IBAction)loadMoreClick:(id)sender {
    NSLog(@"加载更多！");
    
    self.loadMoreBtn.hidden = YES;
    self.loadMoreView.hidden = NO;
    
    
    
}












@end
