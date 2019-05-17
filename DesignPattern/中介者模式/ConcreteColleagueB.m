//
//  ConcreteColleagueB.m
//  DesignPattern
//
//  Created by mac on 2019/5/10.
//  Copyright © 2019 法正磊. All rights reserved.
//

#import "ConcreteColleagueB.h"
#import "AbstractMediator.h"

@implementation ConcreteColleagueB
- (void)send {
    NSLog(@"具体同事类B发出消息");
    AbstractMediator *mediator = [self getMediator];
    [mediator relayWithColleague:self];
}

- (void)receive {
    NSLog(@"具体同事类B收到消息");
}
@end
