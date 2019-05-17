//
//  AbstractColleague.m
//  DesignPattern
//
//  Created by mac on 2019/5/9.
//  Copyright © 2019 法正磊. All rights reserved.
//

#import "AbstractColleague.h"

@interface AbstractColleague ()
@property (nonatomic, weak) AbstractMediator *mediator;
@end

@implementation AbstractColleague

- (void)addAbstractMediator:(AbstractMediator *)mediator {
    self.mediator = mediator;
}

- (AbstractMediator *)getMediator {
    return self.mediator;
}

- (void)receive {
    
}

- (void)send {
    
}
@end
