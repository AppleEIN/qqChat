//
//  DialgCell.m
//  qqChat
//
//  Created by qianfeng on 15-7-4.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "DialgCell.h"
@interface DialgCell()
@property (nonatomic,weak)UILabel *time;
@property (nonatomic,weak)UIButton *textView;
@property (nonatomic,weak)UIImageView *icon;
@end

@implementation DialgCell
+ (instancetype)messageCellWithTablrView:(UITableView *)tableView
{
    //static NSString *ID
    DialgCell *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([self class])];
    if (cell ==nil) {
        cell = [[self alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:NSStringFromClass([self class])];
    }
    return cell;
}

- (void)awakeFromNib {
    // Initialization code
}
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        //时间 如果用作alloc init 对象
        UILabel *time = [[UILabel alloc]init];
        [self.contentView addSubview:time];
        self.time = time;
        
        UIButton *text = [UIButton buttonWithType:UIButtonTypeSystem];
        [self.contentView addSubview:text];
        self.textView = text;
        
        UIImageView *icon = [[UIImageView alloc]init];
        [self.contentView addSubview:icon];
        self.icon = icon;
        
    }
    return self;
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
