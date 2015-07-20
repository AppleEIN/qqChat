//
//  ViewController.m
//  qqChat
//
//  Created by qianfeng on 15-7-4.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "ViewController.h"
#import "DialogModel.h"
#import "DialgCell.h"
#import "Header.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic,strong)NSMutableArray *message;

@end

@implementation ViewController
- (NSMutableArray *)message
{
    if (_message==nil) {
        NSArray *array = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle]pathForResource:@"messages" ofType:@"plist"]];
        for (NSDictionary *dict in array) {
            DialogModel *mess = [DialogModel dialogWithDict:dict];
            [_message addObject:mess];

        }
                          
    }
    return _message;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
#pragma mark tableView数据元方法
- (NSInteger)tableView:(UITableView *)tableView indentationLevelForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 10;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    DialgCell *cell = [DialgCell messageCellWithTablrView:tableView];
    return cell;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
