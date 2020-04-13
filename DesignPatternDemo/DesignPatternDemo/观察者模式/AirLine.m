//
//  AirLine.m
//  DesignPatternDemo
//
//  Created by KKWONG on 2020/4/13.
//  Copyright © 2020 KKWONG. All rights reserved.
//

#import "AirLine.h"
#import "Passengers.h"
@implementation AirLine

- (instancetype)init {
    self = [super init];
    if (self) {
        _observers = [NSMutableArray array];
    }
    return self;
}

- (void)setStatus:(AirLineStatus)status {
    _status = status;
    [self notiAllPassengers];
}

- (void)addObserver:(Passengers *)passenger {
    [self.observers addObject:passenger];
}

- (void)notiAllPassengers {
    for (Passengers *observer in self.observers) {
        [observer updateStatus:self.status];
    }
}

@end
