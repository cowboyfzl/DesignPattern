//
//  CombinationStroke.h
//  DesignPattern
//
//  Created by 法正磊 on 2019/4/24.
//  Copyright © 2019 法正磊. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CombinationMark.h"
NS_ASSUME_NONNULL_BEGIN

@interface CombinationStroke : UIView <CombinationMark>
{
    @private
    UIColor *_color;
    CGFloat _size;
    NSMutableArray *_children;
}
@property (nonatomic, strong) UIColor *color;
@property (nonatomic, assign) CGFloat size;
@property (nonatomic, assign) CGPoint location;
@property (nonatomic, assign) NSInteger count;
@property (nonatomic, assign) id<CombinationMark> lastChild;
@end

NS_ASSUME_NONNULL_END
