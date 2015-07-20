//
//  DialogModel.h
//  qqChat
//
//  Created by qianfeng on 15-7-4.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef enum
{
    DialogModelLee = 0,
    DialogModelHua
    
}DialogModelType;

@interface DialogModel : NSObject
@property (nonatomic,copy)NSString *text;
@property (nonatomic,copy)NSString *time;
@property (nonatomic,assign)DialogModelType *type;
+(id)dialogWithDict:(NSDictionary *)dic;
- (id)initWithDict:(NSDictionary *)dic;

@end
