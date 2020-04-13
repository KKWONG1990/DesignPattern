//
//  ObserverHeader.h
//  DesignPatternDemo
//
//  Created by KKWONG on 2020/4/13.
//  Copyright © 2020 KKWONG. All rights reserved.
//

#ifndef ObserverHeader_h
#define ObserverHeader_h
typedef NS_ENUM(NSInteger, AirLineStatus) {
    AirLineNormalStatus = 0, //正常起飞
    AirLineDelayStatus,      //延迟起飞
    AirLineCancleStatus,     //取消起飞
};

#endif /* ObserverHeader_h */
