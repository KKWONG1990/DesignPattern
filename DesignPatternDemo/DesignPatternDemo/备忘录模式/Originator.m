//
//  Originator.m
//  DesignPatternDemo
//
//  Created by KKWONG on 2020/4/13.
//  Copyright © 2020 KKWONG. All rights reserved.
//

#import "Originator.h"
#import "Memento.h"
@implementation Originator

- (void)setDictionary:(NSDictionary *)dictionary {
    _dictionary = dictionary;
}

- (Memento *)saveMemento {
    return [[Memento alloc] initWithDictionary:self.dictionary];
}

- (void)getContentFromMemento:(Memento *)memento {
    self.dictionary = memento.dictionary;
}
@end
