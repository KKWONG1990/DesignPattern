//
//  MementoManager.h
//  DesignPatternDemo
//
//  Created by KKWONG on 2020/4/13.
//  Copyright © 2020 KKWONG. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Memento;
NS_ASSUME_NONNULL_BEGIN

@interface MementoManager : NSObject

/// 保存备忘录接口
/// @param memento 备忘录
- (void)addMemento:(Memento *)memento;

/// 获取备忘录接口
- (Memento *)getMementoWithVersion:(NSString *)version;
@end

NS_ASSUME_NONNULL_END
