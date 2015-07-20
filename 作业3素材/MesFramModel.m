//
//  MesFramModel.m
//  qqChat
//
//  Created by qianfeng on 15-7-4.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "MesFramModel.h"
#import "DialogModel.h"
//#import "Header.h"

@implementation MesFramModel
-(void)setMessage:(DialogModel *)message
{
    _message =message;
    //1.时间
    CGFloat timeX = 0;
    CGFloat timeY = 0;
    CGFloat timeW = 375;
    CGFloat timeH = 44;
    _timeF = CGRectMake(timeX, timeY, timeW, timeH);
    
    
    CGFloat iconX ;
    CGFloat iconY =CGRectGetMaxY(_timeF);
    CGFloat iconW = 50;
    CGFloat iconH = 50;
    if (message.type==DialogModelLee) {
        iconX = 375-iconW-44;
    }else
    {
        iconX = 10;
        
    }
    _iconF = CGRectMake(iconX, iconY, iconW, iconH);
    
    CGFloat textX ;
    CGFloat textY = iconY;
    
   CGSize textMaxSize = [message.text boundingRectWithSize:CGSizeMake(375-50-50-10-10, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:17]} context:nil].size;
    if (message.type==DialogModelLee) {
        textX = 375-50-10-textMaxSize.width;
        
    }else
    {
        textX = 10+50;
    }
    _textViewF = (CGRect){{textX,textY},textMaxSize};
    
    
    
}

@end
