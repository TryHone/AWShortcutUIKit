//
//  UIButton+Shortcut.h
//  mvp-test
//
//  Created by TryHone on 17/9/5.
//  Copyright © 2017年 TryHone. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (Shortcut)
+(UIButton*)AW_Button:(void(^)(UIButton * btn))block;

@property(nonatomic,weak,readonly)UIButton * (^AWcontentEdgeInsets)(UIEdgeInsets contentEdgeInsets);
@property(nonatomic,weak,readonly)UIButton * (^AWcontentEdgeInsetsQ)(CGFloat top,CGFloat left,CGFloat bottom,CGFloat right);
@property(nonatomic,weak,readonly)UIButton * (^AWtitleEdgeInsets)(UIEdgeInsets titleEdgeInsets);
@property(nonatomic,weak,readonly)UIButton * (^AWtitleEdgeInsetsQ)(CGFloat top,CGFloat left,CGFloat bottom,CGFloat right);
@property(nonatomic,weak,readonly)UIButton * (^AWimageEdgeInsets)(UIEdgeInsets imageEdgeInsets);
@property(nonatomic,weak,readonly)UIButton * (^AWimageEdgeInsetsQ)(CGFloat top,CGFloat left,CGFloat bottom,CGFloat right);
@property(nonatomic,weak,readonly)UIButton * (^AWtintColor)(UIColor * tintColor);
@property(nonatomic,weak,readonly)UIButton * (^AWtintColorQ)(NSString * tintColorhexStr);
@property(nonatomic,weak,readonly)UIButton * (^AWtitle)(NSString * title ,UIControlState state);
@property(nonatomic,weak,readonly)UIButton * (^AWtitleNormalState)(NSString * title);
@property(nonatomic,weak,readonly)UIButton * (^AWtitleHighlightedState)(NSString * title);
@property(nonatomic,weak,readonly)UIButton * (^AWtitleColor)(UIColor * color,UIControlState state);
@property(nonatomic,weak,readonly)UIButton * (^AWtitleColorQ)(NSString * colorhexStr,UIControlState state);
@property(nonatomic,weak,readonly)UIButton * (^AWtitleColorNormalState)(UIColor * color);
@property(nonatomic,weak,readonly)UIButton * (^AWtitleColorNormalStateQ)(NSString * colorhexStr);
@property(nonatomic,weak,readonly)UIButton * (^AWtitleColorHighlightedState)(UIColor * color);
@property(nonatomic,weak,readonly)UIButton * (^AWtitleColorHighlightedStateQ)(NSString * colorhexStr);
@property(nonatomic,weak,readonly)UIButton * (^AWtitleShadowColor)(UIColor * color,UIControlState state);
@property(nonatomic,weak,readonly)UIButton * (^AWtitleShadowColorQ)(NSString * colorhexStr,UIControlState state);
@property(nonatomic,weak,readonly)UIButton * (^AWtitleShadowColorNormalState)(UIColor * color);
@property(nonatomic,weak,readonly)UIButton * (^AWtitleShadowColorNormalStateQ)(NSString * colorhexStr);
@property(nonatomic,weak,readonly)UIButton * (^AWtitleShadowColorHighlightedState)(UIColor * color);
@property(nonatomic,weak,readonly)UIButton * (^AWtitleShadowColorHighlightedStateQ)(NSString * colorhexStr);
@property(nonatomic,weak,readonly)UIButton * (^AWimage)(UIImage *image,UIControlState state);
@property(nonatomic,weak,readonly)UIButton * (^AWimageNormalState)(UIImage *image);
@property(nonatomic,weak,readonly)UIButton * (^AWimageHighlightedState)(UIImage *image);
@property(nonatomic,weak,readonly)UIButton * (^AWbackgroundImage)(UIImage *image,UIControlState state);
@property(nonatomic,weak,readonly)UIButton * (^AWbackgroundImageNormalState)(UIImage *image);
@property(nonatomic,weak,readonly)UIButton * (^AWbackgroundImageHighlightedState)(UIImage *image);
@property(nonatomic,weak,readonly)UIButton * (^AWattributedTitle)(NSAttributedString *title,UIControlState state);
@property(nonatomic,weak,readonly)UIButton * (^AWattributedTitleNormalState)(NSAttributedString *title);
@property(nonatomic,weak,readonly)UIButton * (^AWattributedTitleHighlightedState)(NSAttributedString *title);
@property(nonatomic,weak,readonly)UIButton * (^AWclickAction)(id target, SEL method);
@property(nonatomic,weak,readonly)UIButton * (^AWbackgroundColor)(UIColor * backgroundColor);
@property(nonatomic,weak,readonly)UIButton * (^AWbackgroundColorQ)(NSString * backgroundColorHexStr);

@property(nonatomic,weak,readonly)UIButton * (^AWcornerRadius)(CGFloat cornerRadius);
@property(nonatomic,weak,readonly)UIButton * (^AWborderColor)(UIColor * borderColor);
@property(nonatomic,weak,readonly)UIButton * (^AWborderWidth)(CGFloat borderWidth);
@property(nonatomic,weak,readonly)UIButton * (^AWborderSet)(CGFloat cornerRadius,CGFloat borderWidth,UIColor * borderColor);
//位置相关
@property(nonatomic,weak,readonly)UIButton * (^AWtag)(NSInteger tag);
@property(nonatomic,weak,readonly)UIButton * (^AWframe)(CGRect rect);
@property(nonatomic,weak,readonly)UIButton * (^AWframeQ)(CGFloat x,CGFloat y,CGFloat width,CGFloat height);
@property(nonatomic,weak,readonly)UIButton * (^AWx)(CGFloat x);
@property(nonatomic,weak,readonly)UIButton * (^AWy)(CGFloat y);
@property(nonatomic,weak,readonly)UIButton * (^AWwidth)(CGFloat width);
@property(nonatomic,weak,readonly)UIButton * (^AWheight)(CGFloat height);

@property(nonatomic,weak,readonly)UIButton * (^AWbounds)(CGRect bounds);
@property(nonatomic,weak,readonly)UIButton * (^AWboundsQ)(CGFloat width,CGFloat height);
@property(nonatomic,weak,readonly)UIButton * (^AWcenter)(CGPoint center);
@property(nonatomic,weak,readonly)UIButton * (^AWcenterQ)(CGFloat x,CGFloat y);
@end
