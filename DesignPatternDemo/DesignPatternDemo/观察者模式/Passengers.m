//
//  Passengers.m
//  DesignPatternDemo
//
//  Created by KKWONG on 2020/4/13.
//  Copyright © 2020 KKWONG. All rights reserved.
//

#import "Passengers.h"
#import "AirLine.h"
@implementation Passengers
{
    AirLine *_airLine;
}
- (instancetype)initWithAriLine:(AirLine *)ariLine {
    self = [super init];
    if (self) {
        _airLine = ariLine;
        [_airLine addObserver:self];
    }
    return self;
}

- (void)updateStatus:(AirLineStatus)status {
    
}

@end
