//
//  UILabel+YGZExt.h
//  UILabelTest
//
//  Created by 闫纲忠 on 2017/6/24.
//  Copyright © 2017年 ygz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (YGZExt)

@property (nonatomic, readonly) CGFloat lineHeight;
@property (nonatomic, readonly) NSInteger textNumberOfLines;
@property (nonatomic, readonly) CGFloat textHeight;
@property (nonatomic, readonly) CGFloat textWidth;

- (CGSize)textSizeForLimitedSize:(CGSize)size;

- (NSMutableAttributedString *)attributedStringWith:(NSString *)string lineSpace:(CGFloat)lineSpace limitWidth:(CGFloat)limitWidth;

@end
