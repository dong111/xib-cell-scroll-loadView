//
//  ViewController.m
//  16-02-04-熔炼-(UITableView自定义Cell)
//
//  Created by 陈栋 on 16/2/4.
//  Copyright © 2016年 man. All rights reserved.
//

#import "ViewController.h"
#import "CDGroupBuying.h"
#import "CDGroupBuyingCell.h"
#import "CDGroupBuyingFooterView.h"
#import "CDGroupBuyingHeaderView.h"

@interface ViewController () <UITableViewDataSource>
@property (nonatomic,strong) NSArray *tgs;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (BOOL)prefersStatusBarHidden
{
    return YES;
}

//懒加载数据
- (NSArray *)tgs
{
    if (_tgs==nil) {
        _tgs = [CDGroupBuying groupBuyingsList];
    }
    return _tgs;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.tableView.dataSource = self;
    self.tableView.rowHeight = 80;
    CDGroupBuyingFooterView *footerView = [CDGroupBuyingFooterView footerView];
    self.tableView.tableFooterView = footerView;
 
    CDGroupBuyingHeaderView *headerView = [CDGroupBuyingHeaderView hearView];
    self.tableView.tableHeaderView = headerView;
    
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.tgs.count;
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CDGroupBuyingCell *cell = [CDGroupBuyingCell groupBuytingCellWithTableView:tableView];
    cell.groupBuying = self.tgs[indexPath.row];
    return cell;
}














@end
