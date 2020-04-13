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
@property (nonatomic, strong) NSMutableArray<Passengers *> *observers;
@property (nonatomic, assign) AirLineStatus status;
- (void)addObserver:(Passengers *)passenger;
@end

NS_ASSUME_NONNULL_END
