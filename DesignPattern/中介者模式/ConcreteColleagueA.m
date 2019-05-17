//
//  ConcreteColleague.m
//  DesignPattern
//
//  Created by mac on 2019/5/10.
//  Copyright © 2019 法正磊. All rights reserved.
//

#import "ConcreteColleagueA.h"
#import "AbstractMediator.h"
@implementation ConcreteColleagueA
- (void)send {
    NSLog(@"具体同事类A发出消息");
    AbstractMediator *mediator = [self getMediator];
    [mediator relayWithColleague:self];
}

- (void)receive {
    NSLog(@"具体同事类A收到消息");
    
}
@end
