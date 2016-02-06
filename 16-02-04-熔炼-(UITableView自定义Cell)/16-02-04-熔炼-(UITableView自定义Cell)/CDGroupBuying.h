//
//  CDGroupBuying.h
//  16-02-04-熔炼-(UITableView自定义Cell)
//
//  Created by 陈栋 on 16/2/4.
//  Copyright © 2016年 man. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CDGroupBuying : NSObject

@property (nonatomic,copy) NSString *buyCount;

@property (nonatomic,copy) NSString *icon;

@property (nonatomic,copy) NSString *price;

@property (nonatomic,copy) NSString *title;



- (instancetype) initWithDic:(NSDictionary *)dic;

+ (instancetype) groupBuyingWithDic:(NSDictionary *)dic;


+ (NSMutableArray *) groupBuyingsList;

@end
