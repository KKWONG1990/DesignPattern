//
//  Passengers.h
//  DesignPatternDemo
//
//  Created by KKWONG on 2020/4/13.
//  Copyright © 2020 KKWONG. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ObserverHeader.h"
@class AirLine;
NS_ASSUME_NONNULL_BEGIN

@interface Passengers : NSObject

/// 初始化方法 - 乘客持有飞机航班对象
/// @param ariLine AirLine
- (instancetype)initWithAriLine:(AirLine *)ariLine;

/// 飞机航班更新状态通知乘客，乘客更新自己的信息
/// @param status AirLineStatus
- (void)updateStatus:(AirLineStatus)status;
@end

NS_ASSUME_NONNULL_END
