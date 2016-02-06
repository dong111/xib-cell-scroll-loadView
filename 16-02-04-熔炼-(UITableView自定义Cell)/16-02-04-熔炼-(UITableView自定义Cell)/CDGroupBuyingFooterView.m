//
//  CDGroupBuyingFooterView.m
//  16-02-04-熔炼-(UITableView自定义Cell)
//
//  Created by 陈栋 on 16/2/4.
//  Copyright © 2016年 man. All rights reserved.
//

#import "CDGroupBuyingFooterView.h"
#import "CDGroupBuyingCell.h"

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

    self.loadMoreBtn.hidden = YES;
    self.loadMoreView.hidden = NO;
    
//延长执行,需要先定义个有执行逻辑的方法，才能调用
//    self performSelector:<#(nonnull SEL)#> withObject:<#(nullable id)#> afterDelay:<#(NSTimeInterval)#>

//不想定义一个新的方法来封装执行逻辑,节省一个方法的定义
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        self.loadMoreBtn.hidden = NO;
        self.loadMoreView.hidden = YES;
        //第三步，向代理对象发送消息
        if ([self.delegate respondsToSelector:@selector(footerViewDidClickedMoreBtn:)]) {
            [self.delegate footerViewDidClickedMoreBtn:self];
        }
        
    });
    
    
}












@end
