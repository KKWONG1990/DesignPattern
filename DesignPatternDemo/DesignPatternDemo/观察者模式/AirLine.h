//
//  AirLine.h
//  DesignPatternDemo
//
//  Created by KKWONG on 2020/4/13.
//  Copyright © 2020 KKWONG. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ObserverHeader.h"
@class Passengers;
NS_ASSUME_NONNULL_BEGIN

@interface AirLine : NSObject

/// 持有所有的观察者-即航班状态
@property (nonatomic, strong) NSMutableArray<Passengers *> *observers;

/// 航班状态
@property (nonatomic, assign) AirLineStatus status;

/// 添加观察者
/// @param passenger Passengers
- (void)addObserver:(Passengers *)passenger;
@end

NS_ASSUME_NONNULL_END
