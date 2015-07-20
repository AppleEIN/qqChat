//
//  DialogModel.m
//  qqChat
//
//  Created by qianfeng on 15-7-4.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "DialogModel.h"

@implementation DialogModel
+(id)dialogWithDict:(NSDictionary *)dic
{
    //[u]
    return [[self alloc]initWithDictionary:dic];
}
- (id)initWithDict:(NSDictionary *)dic
{
   if( self = [super init])
   {
       [self setValuesForKeysWithDictionary:dic];
   }
    return self;
}

@end
