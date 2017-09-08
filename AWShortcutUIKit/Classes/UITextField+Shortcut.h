//
//  UITextField+Shortcut.h
//  mvp-test
//
//  Created by TryHone on 17/9/5.
//  Copyright © 2017年 TryHone. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextField (Shortcut)
+(UITextField*)AW_TextField:(void(^)(UITextField * textfield))block;

@property(nonatomic,weak,readonly)UITextField * (^AWtext)(NSString * text);
@property(nonatomic,weak,readonly)UITextField * (^AWattributedText)(NSAttributedString * attributedText);
@property(nonatomic,weak,readonly)UITextField * (^AWtextColor)(UIColor                *textColor);
@property(nonatomic,weak,readonly)UITextField * (^AWfont)(UIFont                 *font);
@property(nonatomic,weak,readonly)UITextField * (^AWtextAlignment)(NSTextAlignment         textAlignment);
@property(nonatomic,weak,readonly)UITextField * (^AWborderStyle)(UITextBorderStyle       borderStyle);
@property(nonatomic,weak,readonly)UITextField * (^AWdefaultTextAttributes)(NSDictionary<NSString *, id>           *defaultTextAttributes);
@property(nonatomic,weak,readonly)UITextField * (^AWplaceholder)(NSString               *placeholder);
@property(nonatomic,weak,readonly)UITextField * (^AWattributedPlaceholder)(NSAttributedString     *attributedPlaceholder);
@property(nonatomic,weak,readonly)UITextField * (^AWbackgroundImage)(UIImage                *background);
@property(nonatomic,weak,readonly)UITextField * (^AWdisabledBackgroundImage)(UIImage                *disabledBackground);
@property(nonatomic,weak,readonly)UITextField * (^AWclearButtonMode)(UITextFieldViewMode  clearButtonMode);
@property(nonatomic,weak,readonly)UITextField * (^AWleftView)(UIView              *leftView);
@property(nonatomic,weak,readonly)UITextField * (^AWleftViewMode)(UITextFieldViewMode  leftViewMode);
@property(nonatomic,weak,readonly)UITextField * (^AWrightView)(UIView              *rightView);
@property(nonatomic,weak,readonly)UITextField * (^AWrightViewMode)( UITextFieldViewMode  rightViewMode);
@property(nonatomic,weak,readonly)UITextField * (^AWinputView)(UIView *inputView);
@property(nonatomic,weak,readonly)UITextField * (^AWinputAccessoryView)(UIView *inputAccessoryView);
@property(nonatomic,weak,readonly)UITextField * (^AWbackgroundColor)(UIColor * backgroundColor);
@property(nonatomic,weak,readonly)UITextField * (^AWbackgroundColorQ)(NSString * backgroundColorHexStr);
@property(nonatomic,weak,readonly)UITextField * (^AWcornerRadius)(CGFloat cornerRadius);
@property(nonatomic,weak,readonly)UITextField * (^AWborderColor)(UIColor * borderColor);
@property(nonatomic,weak,readonly)UITextField * (^AWborderWidth)(CGFloat borderWidth);
@property(nonatomic,weak,readonly)UITextField * (^AWborderSet)(CGFloat cornerRadius,CGFloat borderWidth,UIColor * borderColor);
//位置相关
@property(nonatomic,weak,readonly)UITextField * (^AWtag)(NSInteger tag);
@property(nonatomic,weak,readonly)UITextField * (^AWframe)(CGRect rect);
@property(nonatomic,weak,readonly)UITextField * (^AWframeQ)(CGFloat x,CGFloat y,CGFloat width,CGFloat height);
@property(nonatomic,weak,readonly)UITextField * (^AWx)(CGFloat x);
@property(nonatomic,weak,readonly)UITextField * (^AWy)(CGFloat y);
@property(nonatomic,weak,readonly)UITextField * (^AWwidth)(CGFloat width);
@property(nonatomic,weak,readonly)UITextField * (^AWheight)(CGFloat height);

@property(nonatomic,weak,readonly)UITextField * (^AWbounds)(CGRect bounds);
@property(nonatomic,weak,readonly)UITextField * (^AWboundsQ)(CGFloat width,CGFloat height);
@property(nonatomic,weak,readonly)UITextField * (^AWcenter)(CGPoint center);
@property(nonatomic,weak,readonly)UITextField * (^AWcenterQ)(CGFloat x,CGFloat y);

@end
