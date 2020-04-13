//
//  PassengerB.m
//  DesignPatternDemo
//
//  Created by KKWONG on 2020/4/13.
//  Copyright © 2020 KKWONG. All rights reserved.
//

#import "PassengerB.h"

@implementation PassengerB


- (void)updateStatus:(AirLineStatus)status {
    switch (status) {
        case AirLineNormalStatus:
            NSLog(@"尊敬的%@乘客，飞机正常时间起飞，请您提前到达机场办理登记手续",self);
            break;
        case AirLineDelayStatus:
        NSLog(@"尊敬的%@乘客，飞机延迟起飞，您可以晚点再来机场哦",self);
            break;
        case AirLineCancleStatus:
        NSLog(@"尊敬的%@乘客，飞机因故取消，请您办理改签或退签手续，抱歉",self);
            break;
        default:
            break;
    }
}

@end
