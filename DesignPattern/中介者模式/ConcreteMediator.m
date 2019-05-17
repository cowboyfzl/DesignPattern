//
//  ConcreteMediator.m
//  DesignPattern
//
//  Created by mac on 2019/5/9.
//  Copyright © 2019 法正磊. All rights reserved.
//

#import "ConcreteMediator.h"

@interface ConcreteMediator ()
@property (nonatomic, strong) NSMutableArray <AbstractColleague *> *list;
@end

@implementation ConcreteMediator
- (void)registetWithColleague:(AbstractColleague *)colleague {
    if (![self.list containsObject:colleague]) {
        [_list addObject:colleague];
        [colleague addAbstractMediator:self];
    }
}

- (void)relayWithColleague:(AbstractColleague *)colleague {
    NSInteger index = [self.list indexOfObject:colleague];
    if (_list.count > index) {
        AbstractColleague *currentColleague = _list[index];
        [currentColleague receive];
    }
}

- (NSMutableArray<AbstractColleague *> *)list {
    if (!_list) {
        _list = [NSMutableArray array];
    }
    return _list;
}
@end
