//
//  MementoManager.m
//  DesignPatternDemo
//
//  Created by KKWONG on 2020/4/13.
//  Copyright © 2020 KKWONG. All rights reserved.
//

#import "MementoManager.h"
#import "Memento.h"
@interface MementoManager()
@property (nonatomic, strong) NSMutableArray<Memento *> *mementos;
@end
@implementation MementoManager
- (instancetype)init {
    self = [super init];
    if (self) {
        _mementos = [NSMutableArray array];
    }
    return self;
}

- (void)addMemento:(Memento *)memento {
    /*
     在添加备忘录到数据源时，这里应该先判断数据源是否已经存在该备忘录
     如果存在则替换该备忘录的内容
     */
    [self.mementos addObject:memento];
}

- (Memento *)getMementoWithVersion:(NSString *)version {
    __block Memento *memento = nil;
    [self.mementos enumerateObjectsUsingBlock:^(Memento * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        if ([obj.dictionary.allKeys.firstObject isEqualToString:version]) {
            memento = obj;
            return;
        }
    }];
    return memento;
}

@end
