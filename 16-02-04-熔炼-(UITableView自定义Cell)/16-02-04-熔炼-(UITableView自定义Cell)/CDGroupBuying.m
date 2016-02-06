//
//  CDGroupBuying.m
//  16-02-04-熔炼-(UITableView自定义Cell)
//
//  Created by 陈栋 on 16/2/4.
//  Copyright © 2016年 man. All rights reserved.
//

#import "CDGroupBuying.h"

@implementation CDGroupBuying

- (instancetype) initWithDic:(NSDictionary *)dic{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dic];
    }
    return self;
}

+ (instancetype) groupBuyingWithDic:(NSDictionary *)dic{
    return [[CDGroupBuying alloc] initWithDic:dic];
}


+ (NSMutableArray *) groupBuyingsList{
    NSString *path = [[NSBundle mainBundle] pathForResource:@"tgs" ofType:@"plist"];
    
    NSArray *dicArray = [NSArray arrayWithContentsOfFile:path];
    
    NSMutableArray *tmpArray  = [NSMutableArray array];
    
    for (NSDictionary *dic in dicArray) {
        CDGroupBuying *groupBuying = [[CDGroupBuying alloc] initWithDic:dic];
        [tmpArray addObject:groupBuying];
    }
    
    return tmpArray;
}



@end
