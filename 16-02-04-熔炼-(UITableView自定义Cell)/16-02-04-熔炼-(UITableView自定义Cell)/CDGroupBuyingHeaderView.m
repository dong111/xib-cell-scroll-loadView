//
//  CDGroupBuyingHeaderView.m
//  16-02-04-熔炼-(UITableView自定义Cell)
//
//  Created by 陈栋 on 16/2/5.
//  Copyright © 2016年 man. All rights reserved.
//

#import "CDGroupBuyingHeaderView.h"


@interface CDGroupBuyingHeaderView ()
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;


@end

@implementation CDGroupBuyingHeaderView

//类方法，从xib加载UIview
+ (instancetype)hearView
{
    CDGroupBuyingHeaderView *headerView = [[[NSBundle mainBundle]loadNibNamed:@"CDGroupBuyingHeaderView" owner:nil options:nil] lastObject];
    
    return headerView;
}
//当xib控件加载完会调用次方法
- (void)awakeFromNib
{
    CGFloat iconW = self.scrollView.frame.size.width;
    CGFloat iconH = self.scrollView.frame.size.height;
    for (int i=0; i<5; i++) {
        NSString *iconPath = [NSString stringWithFormat:@"ad_%02d",i];
        
        UIImage *icon = [UIImage imageNamed:iconPath];
        
        UIImageView *iconView = [[UIImageView alloc] initWithImage:icon];
        CGFloat iconX = i*iconW;
        CGFloat iconY = 0;
        iconView.frame = CGRectMake(iconX, iconY, iconW, iconH);
        [self.scrollView addSubview:iconView];
    }
    
    self.scrollView.contentSize = CGSizeMake(iconW*5, iconH);

}


@end
