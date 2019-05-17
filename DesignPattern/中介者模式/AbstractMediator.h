//
//  AbstractMediator.h
//  DesignPattern
//
//  Created by mac on 2019/5/9.
//  Copyright © 2019 法正磊. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AbstractColleague.h"
NS_ASSUME_NONNULL_BEGIN

@interface AbstractMediator : NSObject
- (void)registetWithColleague:(AbstractColleague *)colleague;
- (void)relayWithColleague:(AbstractColleague *)colleague;
@end

NS_ASSUME_NONNULL_END
