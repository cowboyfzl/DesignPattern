//
//  CombinationVertex.h
//  DesignPattern
//
//  Created by 法正磊 on 2019/4/24.
//  Copyright © 2019 法正磊. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CombinationMark.h"
NS_ASSUME_NONNULL_BEGIN

@interface CombinationVertex : UIView <CombinationMark, NSCopying>
{
    @protected
    CGPoint _location;
}

@property (nonatomic, strong) UIColor *color;
@property (nonatomic, assign) CGFloat size;
@property (nonatomic, assign) CGPoint location;
@property (nonatomic, assign) NSInteger count;
@property (nonatomic, assign) id<CombinationMark> lastChild;
- (id)copyWithZone:(NSZone * _Nullable)zone;
- (instancetype)initWithLocation:(CGPoint )alocation;
@end

NS_ASSUME_NONNULL_END
