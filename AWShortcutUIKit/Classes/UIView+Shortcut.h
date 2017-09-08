//
//  UIView+Shortcut.h
//  mvp-test
//
//  Created by TryHone on 17/9/5.
//  Copyright © 2017年 TryHone. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Shortcut)

@property(nonatomic,assign)CGFloat x;
@property(nonatomic,assign,readonly)CGFloat startX;
@property(nonatomic,assign,readonly)CGFloat endX;
@property(nonatomic,assign)CGFloat y;
@property(nonatomic,assign,readonly)CGFloat startY;
@property(nonatomic,assign,readonly)CGFloat endY;
@property(nonatomic,assign)CGFloat width;
@property(nonatomic,assign)CGFloat height;
+(UIView*)AW_View:(void(^)(UIView * view))block;
//一下属性不能作为子类链式调用如果确定需要请放到链式最后面不然会导致链式中断
@property(nonatomic,weak,readonly)UIView * (^AWtag)(NSInteger tag);
@property(nonatomic,weak,readonly)UIView * (^AWframe)(CGRect rect);
@property(nonatomic,weak,readonly)UIView * (^AWframeQ)(CGFloat x,CGFloat y,CGFloat width,CGFloat height);
@property(nonatomic,weak,readonly)UIView * (^AWx)(CGFloat x);
@property(nonatomic,weak,readonly)UIView * (^AWy)(CGFloat y);
@property(nonatomic,weak,readonly)UIView * (^AWwidth)(CGFloat width);
@property(nonatomic,weak,readonly)UIView * (^AWheight)(CGFloat height);

@property(nonatomic,weak,readonly)UIView * (^AWbounds)(CGRect bounds);
@property(nonatomic,weak,readonly)UIView * (^AWboundsQ)(CGFloat width,CGFloat height);
@property(nonatomic,weak,readonly)UIView * (^AWcenter)(CGPoint center);
@property(nonatomic,weak,readonly)UIView * (^AWcenterQ)(CGFloat x,CGFloat y);
@property(nonatomic,weak,readonly)UIView * (^AWbackgroundColor)(UIColor * backgroundColor);
@property(nonatomic,weak,readonly)UIView * (^AWbackgroundColorQ)(NSString * backgroundColorHexStr);
//圆角相关
@property(nonatomic,weak,readonly)UIView * (^AWcornerRadius)(CGFloat cornerRadius);
@property(nonatomic,weak,readonly)UIView * (^AWborderColor)(UIColor * borderColor);
@property(nonatomic,weak,readonly)UIView * (^AWborderWidth)(CGFloat borderWidth);
@property(nonatomic,weak,readonly)UIView * (^AWborderSet)(CGFloat cornerRadius,CGFloat borderWidth,UIColor * borderColor);
@property(nonatomic,weak,readonly)UIView * (^AWaddGestureRecognizer)(UIGestureRecognizer * gesture);
@property(nonatomic,weak,readonly)UIView * (^AWaddTapGestureRecognizer)(id target,SEL method);
@end
