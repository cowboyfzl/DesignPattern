//
//  AbstractColleague.h
//  DesignPattern
//
//  Created by mac on 2019/5/9.
//  Copyright © 2019 法正磊. All rights reserved.
//

#import <Foundation/Foundation.h>
@class AbstractMediator;

NS_ASSUME_NONNULL_BEGIN

@interface AbstractColleague : NSObject
- (void)addAbstractMediator:(AbstractMediator *)mediator;
- (AbstractMediator *)getMediator;
- (void)receive;
- (void)send;
@end

NS_ASSUME_NONNULL_END
