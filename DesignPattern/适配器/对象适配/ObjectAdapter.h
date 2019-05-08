//
//  ObjectAdapter.h
//  DesignPattern
//
//  Created by mac on 2019/5/8.
//  Copyright © 2019 法正磊. All rights reserved.
//

#import "Usber.h"
#import "PS2.h"
NS_ASSUME_NONNULL_BEGIN

@interface ObjectAdapter : Usber <PS2Protocol>
- (instancetype)initWithUsber:(Usber *)usber;
@end

NS_ASSUME_NONNULL_END
