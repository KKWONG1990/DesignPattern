//
//  ObserverPatternViewController.m
//  DesignPatternDemo
//
//  Created by KKWONG on 2020/4/13.
//  Copyright © 2020 KKWONG. All rights reserved.
//

#import "ObserverPatternViewController.h"
#import "AirLine.h"
#import "PassengerA.h"
#import "PassengerB.h"
#import "PassengerC.h"

@interface ObserverPatternViewController ()
@property (nonatomic, strong) AirLine *airLine;
@end

@implementation ObserverPatternViewController

/*
 观察者模式 - 当对象间存在一对多关系时，则使用观察者模式（ObserverPattern）。比如，当一个对象被修改时，则会自动通知它的依赖对象。观察者模式属于行为型模式。
 
 案例：比如说一个飞机航班，它与飞机上的乘客和机组人员是紧密联系的，航班起飞时间或航班取消等状态都需要通知到乘客，乘客是航班的观察者，而航班则是被观察对象
 
 1. 被观察者(航班) - 航班持有所有的乘客
 2. 观察者(乘客)，观察者应该有多个。因为是同一个类型，所以应该继承一个父类
 3. 观察者持有被观察者
 */


- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.whiteColor;
    self.airLine = [[AirLine alloc] init];
    PassengerA *passengerA = [[PassengerA alloc] initWithAriLine:self.airLine];
    PassengerB *passengerB = [[PassengerB alloc] initWithAriLine:self.airLine];
    PassengerC *passengerC = [[PassengerC alloc] initWithAriLine:self.airLine];
}


- (IBAction)sendStatus:(UIButton *)sender {
    switch (sender.tag) {
        case 1:
            self.airLine.status = AirLineNormalStatus;
            break;
        case 2:
            self.airLine.status = AirLineDelayStatus;
            break;
        case 3:
            self.airLine.status = AirLineCancleStatus;
            break;
        default:
            break;
    }
    
    
}


@end
