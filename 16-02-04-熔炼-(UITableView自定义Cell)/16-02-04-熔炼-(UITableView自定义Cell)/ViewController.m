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

//使用代理第一步：遵守代理协议
@interface ViewController () <UITableViewDataSource,CDGroupBuyingFooterDelegate>
@property (nonatomic,strong) NSMutableArray *tgs;
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
 
    //使用代理第二步：设置代理对象
    footerView.delegate = self;
    
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



//使用代理第三步：实现代理方法
#pragma mark -footerView代理方法实现
- (void)footerViewDidClickedMoreBtn:(CDGroupBuyingFooterView *)footerView
{
    CDGroupBuying *gb = [[CDGroupBuying alloc] init];
    gb.title = @"新品上架，欢迎品尝，私人美食定制";
    gb.icon = @"2c97690e72365e38e3e2a95b934b8dd2";
    gb.price = @"1000";
    gb.buyCount = @"10";
    
    [self.tgs addObject:gb];
    //重新加载数据会执行多次生成cell方法，效率地下
//    [self.tableView reloadData];
    
    //提交效率，只生成一次cell,插入新cell
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:self.tgs.count-1 inSection:0];
    [self.tableView insertRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
    
    //滚动到tableView最下面
    [self.tableView scrollToRowAtIndexPath:indexPath atScrollPosition:UITableViewScrollPositionBottom animated:YES];
    //不能使用,reload含义是：先删除cell，然后插入新的cell，这里删除会报错，因为没有要删除的内容
//    [self.tableView reloadRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
    
    
}










@end
