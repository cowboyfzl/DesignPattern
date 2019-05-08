//
//  TouchConsoleController.h
//  DesignPattern
//
//  Created by mac on 2019/5/8.
//  Copyright © 2019 法正磊. All rights reserved.
//

#import "ConsoleController.h"

NS_ASSUME_NONNULL_BEGIN

@interface TouchConsoleController : ConsoleController
- (void)up;
- (void)down;
- (void)left;
- (void)right;
- (void)select;
- (void)start;
- (void)action1;
- (void)action2;

@end

NS_ASSUME_NONNULL_END
