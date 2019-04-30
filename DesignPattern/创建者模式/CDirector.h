//
//  CDirector.h
//  DesignPattern
//
//  Created by blm on 2019/4/30.
//  Copyright © 2019 法正磊. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CBuilder.h"
#import "CMoBikeBuilder.h"
#import "OfoBikeBuilder.h"
NS_ASSUME_NONNULL_BEGIN

@interface CDirector : NSObject

- (instancetype)initWithBuilder:(id<CBuilderInterface>)builder;
- (CBike *)construct;
@end

NS_ASSUME_NONNULL_END
