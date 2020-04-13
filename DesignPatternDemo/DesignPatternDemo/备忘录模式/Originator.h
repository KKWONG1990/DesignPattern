//
//  Originator.h
//  DesignPatternDemo
//
//  Created by KKWONG on 2020/4/13.
//  Copyright © 2020 KKWONG. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Memento;
NS_ASSUME_NONNULL_BEGIN

@interface Originator : NSObject
@property (nonatomic, strong) NSDictionary *dictionary;
- (Memento *)saveMemento;
- (void)getContentFromMemento:(Memento *)memento;
@end

NS_ASSUME_NONNULL_END
