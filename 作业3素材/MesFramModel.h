//
//  MesFramModel.h
//  qqChat
//
//  Created by qianfeng on 15-7-4.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@class DialogModel;

@interface MesFramModel : NSObject
@property (nonatomic,assign)CGRect timeF;
@property (nonatomic,assign)CGRect textViewF;
@property (nonatomic,assign)CGRect iconF;
@property (nonatomic,assign)CGFloat cellH;
//
@property (nonatomic,strong)DialogModel *message;
@end
