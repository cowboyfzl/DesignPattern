//
//  PCNationalBrefingHorizontalViewIProtocol.h
//  DesignPattern
//
//  Created by blm on 2019/4/30.
//  Copyright © 2019 法正磊. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PCNationalBrefingHorizontalRowView.h"

NS_ASSUME_NONNULL_BEGIN

@protocol PCNationalBrefingHorizontalViewIBuilder <NSObject>
- (void)setHeaderTitle:(NSString *)title;
- (void)setHeaderRightContent:(NSString *)rightContent;
- (void)setPlaceholderContents:(NSString *)placeholderContents;
- (void)setContentLabels:(NSMutableArray *)contentLabels;
- (void)setColors:(NSArray *)colors;
- (void)setTapBlock:(void(^)())tapBlock;
- (PCNationalBrefingHorizontalRowView *)createBrefingView;
@end

NS_ASSUME_NONNULL_END
