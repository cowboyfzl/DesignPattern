//
//  Mark.h
//  DesignPattern
//
//  Created by 法正磊 on 2019/4/24.
//  Copyright © 2019 法正磊. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol CombinationMark <NSObject, NSCopying>
@property (nonatomic, strong) UIColor *color;
@property (nonatomic, assign) CGFloat size;
@property (nonatomic, assign) CGPoint location;
@property (nonatomic, assign) NSInteger count;
@property (nonatomic, assign) id<CombinationMark> lastChild;
@optional
- (void)addMark:(id<CombinationMark>)mark;
- (void)removeMark:(id<CombinationMark>)mark;
- (id<CombinationMark>)childMarkAtIndex:(NSInteger )index;
- (id)copyWithZone:(NSZone *)zone;

@end

NS_ASSUME_NONNULL_END
