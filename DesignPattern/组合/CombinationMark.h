//
//  Mark.h
//  DesignPattern
//
//  Created by 法正磊 on 2019/4/24.
//  Copyright © 2019 法正磊. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol CombinationMark <NSObject>
@property (nonatomic, strong) UIColor *color;
@property (nonatomic, assign) CGSize size;
@property (nonatomic, assign) CGPoint location;
@property (nonatomic, assign) NSInteger count;
@property (nonatomic, assign) id<Mark> lastChild;
- (void)addMark:(id<Mark>)mark;
- (void)removeMark:(id<Mark>)mark;
- (void)childAtIndex:(NSInteger )index;
- (void)drawWithContext:(CGContextRef)context;
@end

NS_ASSUME_NONNULL_END
