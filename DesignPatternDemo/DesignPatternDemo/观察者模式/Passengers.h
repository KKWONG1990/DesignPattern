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

- (instancetype)initWithAriLine:(AirLine *)ariLine;
- (void)updateStatus:(AirLineStatus)status;
@end

NS_ASSUME_NONNULL_END
