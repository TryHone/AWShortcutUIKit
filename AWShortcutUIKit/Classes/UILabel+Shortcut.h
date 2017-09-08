//
//  UILabel+Shortcut.h
//  mvp-test
//
//  Created by TryHone on 17/9/5.
//  Copyright © 2017年 TryHone. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (Shortcut)
+(UILabel*)AW_Lable:(void(^)(UILabel * lab))block;
@property(nonatomic,weak,readonly)UILabel * (^AWframe)(CGRect rect);
@property(nonatomic,weak,readonly)UILabel * (^AWframeQ)(CGFloat x,CGFloat y,CGFloat width,CGFloat height);
@property(nonatomic,weak,readonly)UILabel * (^AWtext)(NSString * text);
@property(nonatomic,weak,readonly)UILabel * (^AWfont)(UIFont * font);
//快捷方法设置系统字体
@property(nonatomic,weak,readonly)UILabel * (^AWfontQ)(NSInteger sysfontsize);
//设置颜色
@property(nonatomic,weak,readonly)UILabel * (^AWtextColor)(UIColor * color);
@property(nonatomic,weak,readonly)UILabel * (^AWtextColorQ)(NSString * colorhexStr);
@property(nonatomic,weak,readonly)UILabel * (^AWshadowColor)(UIColor * color);
@property(nonatomic,weak,readonly)UILabel * (^AWshadowColorQ)(NSString * colorhexStr);
@property(nonatomic,weak,readonly)UILabel * (^AWshadowOffset)(CGSize size);
@property(nonatomic,weak,readonly)UILabel * (^AWshadowOffsetQ)(CGFloat width,CGFloat height);
@property(nonatomic,weak,readonly)UILabel * (^AWtextAlignment)(NSTextAlignment  alignment);
@property(nonatomic,weak,readonly)UILabel * (^AWlineBreakMode)(NSLineBreakMode lineBreakMode);
@property(nonatomic,weak,readonly)UILabel * (^AWattributedText)(NSAttributedString * attributedText);
@property(nonatomic,weak,readonly)UILabel * (^AWhighlightedTextColor)(UIColor * highlightedTextColor);
@property(nonatomic,weak,readonly)UILabel * (^AWhighlightedTextColorQ)(NSString * colorhexStr);
@property(nonatomic,weak,readonly)UILabel * (^AWbackgroundColor)(UIColor * backgroundColor);
@property(nonatomic,weak,readonly)UILabel * (^AWbackgroundColorQ)(NSString * backgroundColorHexStr);
@property(nonatomic,weak,readonly)UILabel * (^AWcornerRadius)(CGFloat cornerRadius);
@property(nonatomic,weak,readonly)UILabel * (^AWborderColor)(UIColor * borderColor);
@property(nonatomic,weak,readonly)UILabel * (^AWborderWidth)(CGFloat borderWidth);
@property(nonatomic,weak,readonly)UILabel * (^AWborderSet)(CGFloat cornerRadius,CGFloat borderWidth,UIColor * borderColor);

//位置相关
@property(nonatomic,weak,readonly)UILabel * (^AWtag)(NSInteger tag);
@property(nonatomic,weak,readonly)UILabel * (^AWx)(CGFloat x);
@property(nonatomic,weak,readonly)UILabel * (^AWy)(CGFloat y);
@property(nonatomic,weak,readonly)UILabel * (^AWwidth)(CGFloat width);
@property(nonatomic,weak,readonly)UILabel * (^AWheight)(CGFloat height);

@property(nonatomic,weak,readonly)UILabel * (^AWbounds)(CGRect bounds);
@property(nonatomic,weak,readonly)UILabel * (^AWboundsQ)(CGFloat width,CGFloat height);
@property(nonatomic,weak,readonly)UILabel * (^AWcenter)(CGPoint center);
@property(nonatomic,weak,readonly)UILabel * (^AWcenterQ)(CGFloat x,CGFloat y);
@end
