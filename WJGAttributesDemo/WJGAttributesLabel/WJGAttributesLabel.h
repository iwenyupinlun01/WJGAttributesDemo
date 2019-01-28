//
//  WJGAttributesLabel.h
//  WJGAttributesDemo
//
//  Created by 王俊钢 on 2019/1/28.
//  Copyright © 2019 wangjungang. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface WJGAttributesLabel : UILabel
typedef void(^WJGAttributesBlock)(void);
/**
 
 @param text 传入富文本类型的字符串
 @param actionText 要响应事件的字符串
 */
- (void)setAttributesText: (NSMutableAttributedString *)text
               actionText: (NSString *)actionText;

/**
 点击事件回调
 */
@property (nonatomic , copy) WJGAttributesBlock actionBlock;
@end

NS_ASSUME_NONNULL_END
