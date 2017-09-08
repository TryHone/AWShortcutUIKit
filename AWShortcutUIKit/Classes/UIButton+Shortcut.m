//
//  UIButton+Shortcut.m
//  mvp-test
//
//  Created by TryHone on 17/9/5.
//  Copyright © 2017年 TryHone. All rights reserved.
//

#import "UIButton+Shortcut.h"
#import "UIColor+AWColor.h"
#import "UIView+Shortcut.h"

@implementation UIButton (Shortcut)
+(UIButton*)AW_Button:(void(^)(UIButton * btn))block{
    UIButton * btn = [[UIButton alloc] init];
    if (block) {
        block(btn);
    }
    return btn;
}

-(UIButton * (^)(UIEdgeInsets contentEdgeInsets))AWcontentEdgeInsets{
 
    return ^(UIEdgeInsets contentEdgeInsets){
        self.contentEdgeInsets = contentEdgeInsets;
        return self;
    };
}
-(UIButton * (^)(CGFloat top,CGFloat left,CGFloat bottom,CGFloat right))AWcontentEdgeInsetsQ{
    return ^(CGFloat top,CGFloat left,CGFloat bottom,CGFloat right){
        self.contentEdgeInsets = UIEdgeInsetsMake(top, left, bottom, right);
        return self;
    };
}
-(UIButton * (^)(UIEdgeInsets titleEdgeInsets))AWtitleEdgeInsets{
    return ^(UIEdgeInsets titleEdgeInsets){
        self.titleEdgeInsets = titleEdgeInsets;
        return self;
    };
}
-(UIButton * (^)(CGFloat top,CGFloat left,CGFloat bottom,CGFloat right))AWtitleEdgeInsetsQ{
    return ^(CGFloat top,CGFloat left,CGFloat bottom,CGFloat right){
        self.titleEdgeInsets = UIEdgeInsetsMake(top, left, bottom, right);
        return self;
    };
}
-(UIButton * (^)(UIEdgeInsets imageEdgeInsets))AWimageEdgeInsets{
    return ^(UIEdgeInsets imageEdgeInsets){
        self.imageEdgeInsets = imageEdgeInsets;
        return self;
    };
}
-(UIButton * (^)(CGFloat top,CGFloat left,CGFloat bottom,CGFloat right))AWimageEdgeInsetsQ{
    return ^(CGFloat top,CGFloat left,CGFloat bottom,CGFloat right){
        self.imageEdgeInsets = UIEdgeInsetsMake(top, left, bottom, right);
        return self;
    };
}
-(UIButton * (^)(UIColor * tintColor))AWtintColor{
    return ^(UIColor * tintColor){
        self.tintColor = tintColor;
        return self;
    };
}
-(UIButton * (^)(NSString * tintColorhexStr))AWtintColorQ{
    return ^(NSString * tintColorhexStr){
        self.tintColor = [UIColor colorWithHexString:tintColorhexStr];
        return self;
    };
}
-(UIButton * (^)(NSString * title ,UIControlState state))AWtitle{
    return ^(NSString * title ,UIControlState state){
        [self setTitle:title forState:state];
        return self;
    };
}
-(UIButton * (^)(NSString * title))AWtitleNormalState{
    return ^(NSString * title){
        [self setTitle:title forState:UIControlStateNormal];
        return self;
    };
}
-(UIButton * (^)(NSString * title))AWtitleHighlightedState{
    return ^(NSString * title){
        [self setTitle:title forState:UIControlStateHighlighted];
        return self;
    };
}
-(UIButton * (^)(UIColor * color,UIControlState state))AWtitleColor{
    return ^(UIColor * color,UIControlState state){
        [self setTitleColor:color forState:state];
        return self;
    };
}
-(UIButton * (^)(NSString * colorhexStr,UIControlState state))AWtitleColorQ{
    return ^(NSString * colorhexStr,UIControlState state){
        [self setTitleColor:[UIColor colorWithHexString:colorhexStr] forState:state];
        return self;
    };
}
-(UIButton * (^)(UIColor * color))AWtitleColorNormalState{
    return ^(UIColor * color){
        [self setTitleColor:color forState:UIControlStateNormal];
        return self;
    };
}
-(UIButton * (^)(NSString * colorhexStr))AWtitleColorNormalStateQ{
    return ^(NSString * colorhexStr){
        [self setTitleColor:[UIColor colorWithHexString:colorhexStr] forState:UIControlStateNormal];
        return self;
    };
}
-(UIButton * (^)(UIColor * color))AWtitleColorHighlightedState{
    return ^(UIColor * color){
        [self setTitleColor:color forState:UIControlStateHighlighted];
        return self;
    };
}
-(UIButton * (^)(NSString * colorhexStr))AWtitleColorHighlightedStateQ{
    return ^(NSString * colorhexStr){
        [self setTitleColor:[UIColor colorWithHexString:colorhexStr] forState:UIControlStateNormal];
        return self;
    };
}
-(UIButton * (^)(UIColor * color,UIControlState state))AWtitleShadowColor{
    return ^(UIColor * color,UIControlState state){
        [self  setTitleShadowColor:color forState:state];
        return self;
    };
}
-(UIButton * (^)(NSString * colorhexStr,UIControlState state))AWtitleShadowColorQ{
    return ^(NSString * colorhexStr,UIControlState state){
        [self setTitleShadowColor:[UIColor colorWithHexString:colorhexStr] forState:state];
        return self;
    };
}
-(UIButton * (^)(UIColor * color))AWtitleShadowColorNormalState{
    return ^(UIColor * color){
        [self setTitleShadowColor:color forState:UIControlStateNormal];
        return self;
    };
}
-(UIButton * (^)(NSString * colorhexStr))AWtitleShadowColorNormalStateQ{
    return ^(NSString * colorhexStr){
        [self setTitleShadowColor:[UIColor colorWithHexString:colorhexStr] forState:UIControlStateNormal];
        return self;
    };
}
-(UIButton * (^)(UIColor * color))AWtitleShadowColorHighlightedState{
    return ^(UIColor * color){
        [self setTitleShadowColor:color forState:UIControlStateNormal];
        return self;
    };
}
-(UIButton * (^)(NSString * colorhexStr))AWtitleShadowColorHighlightedStateQ{
    return ^(NSString * colorhexStr){
        [self setTitleShadowColor:[UIColor colorWithHexString:colorhexStr] forState:UIControlStateNormal];
        return self;
    };
}

-(UIButton * (^)(UIImage *image,UIControlState state))AWimage{
    return ^(UIImage *image,UIControlState state){
        [self setImage:image forState:state];
        return self;
    };
}
-(UIButton * (^)(UIImage *image))AWimageNormalState{
    return ^(UIImage *image){
        [self setImage:image forState:UIControlStateNormal];
        return self;
    };
}
-(UIButton * (^)(UIImage *image))AWimageHighlightedState{
    return ^(UIImage *image){
        [self setImage:image forState:UIControlStateHighlighted];
        return self;
    };
}
-(UIButton * (^)(UIImage *image,UIControlState state))AWbackgroundImage{
    return ^(UIImage *image,UIControlState state){
        [self setBackgroundImage:image forState:state];
        return self;
    };
}
-(UIButton * (^)(UIImage *image))AWbackgroundImageNormalState{
    return ^(UIImage *image){
        [self setBackgroundImage:image forState:UIControlStateNormal];
        return self;
    };
}
-(UIButton * (^)(UIImage *image))AWbackgroundImageHighlightedState{
    return ^(UIImage *image){
        [self setBackgroundImage:image forState:UIControlStateHighlighted];
        return self;
    };
}
-(UIButton * (^)(NSAttributedString *title,UIControlState state))AWattributedTitle{
    return ^(NSAttributedString *title,UIControlState state){
        [self setAttributedTitle:title forState:state];
        return self;
    };
}
-(UIButton * (^)(NSAttributedString *title))AWattributedTitleNormalState{
    return ^(NSAttributedString *title){
        [self setAttributedTitle:title forState:UIControlStateNormal];
        return self;
    };
}
-(UIButton * (^)(NSAttributedString *title))AWattributedTitleHighlightedState{
    return ^(NSAttributedString *title){
        [self setAttributedTitle:title forState:UIControlStateHighlighted];
        return self;
    };
}
-(UIButton * (^)(id target, SEL method))AWclickAction{
    return ^(id target, SEL method){
        [self addTarget:target action:method forControlEvents:UIControlEventTouchUpInside];
        return self;
    };
}

-(UIButton * (^)(UIColor * backgroundColor))AWbackgroundColor{
    return ^(UIColor * backgroundColor){
        self.backgroundColor = backgroundColor;
        return self;
    };
}
-(UIButton * (^)(NSString * backgroundColorHexStr))AWbackgroundColorQ{
    return ^(NSString * backgroundColorHexStr){
        self.backgroundColor = [UIColor colorWithHexString:backgroundColorHexStr];
        return self;
    };
}
-(UIButton * (^)(CGFloat cornerRadius))AWcornerRadius{
    return ^(CGFloat cornerRadius){
        if (cornerRadius>0) {
            self.layer.masksToBounds = YES;
            self.layer.cornerRadius = cornerRadius;
        }
        return self;
    };
}
-(UIButton * (^)(UIColor * borderColor))AWborderColor{
    return ^(UIColor * borderColor){
        self.layer.borderColor = borderColor.CGColor;
        return self;
    };
}
-(UIButton * (^)(CGFloat borderWidth))AWborderWidth{
    return ^(CGFloat borderWidth){
        self.layer.borderWidth = borderWidth;
        return self;
    };
}
-(UIButton * (^)(CGFloat cornerRadius,CGFloat borderWidth,UIColor * borderColor))AWborderSet{
    return ^(CGFloat cornerRadius,CGFloat borderWidth,UIColor * borderColor){
        
        if (cornerRadius>0) {
            self.layer.masksToBounds = YES;
            self.layer.cornerRadius = cornerRadius;
        }
        if (borderWidth) {
            self.layer.borderWidth = borderWidth;
        }
        if (borderColor) {
            self.layer.borderColor = borderColor.CGColor;
        }
        return self;
    };
}

-(UIButton * (^)(NSInteger tag))AWtag{
    return ^(NSInteger tag){
        self.tag = tag;
        return self;
    };
}
-(UIButton * (^)(CGRect rect))AWframe{
    return ^(CGRect rect){
        self.frame = rect;
        return self;
    };
}
-(UIButton * (^)(CGFloat x,CGFloat y,CGFloat width,CGFloat height))AWframeQ{
    return ^(CGFloat x,CGFloat y,CGFloat width,CGFloat height){
        self.frame = CGRectMake(x, y, width, height);
        return self;
    };
}
-(UIButton * (^)(CGFloat x))AWx{
    return ^(CGFloat x){
        self.x = x;
        return self;
    };
}
-(UIButton * (^)(CGFloat y))AWy{
    return ^(CGFloat y){
        self.y = y;
        return self;
    };
}
-(UIButton * (^)(CGFloat width))AWwidth{
    return ^(CGFloat width){
        self.width = width;
        return self;
    };
}

-(UIButton * (^)(CGFloat height))AWheight{
    return ^(CGFloat height){
        self.height = height;
        return self;
    };
}
-(UIButton * (^)(CGRect bounds))AWbounds{
    return ^(CGRect bounds){
        self.bounds = bounds;
        return self;
    };
}
-(UIButton * (^)(CGFloat width,CGFloat height))AWboundsQ{
    return ^(CGFloat width,CGFloat height){
        self.bounds = CGRectMake(0, 0, width, height);
        return self;
    };
}
-(UIButton * (^)(CGPoint center))AWcenter{
    return ^(CGPoint center){
        self.center = center;
        return self;
    };
}
-(UIButton * (^)(CGFloat x,CGFloat y))AWcenterQ{
    return ^(CGFloat x,CGFloat y){
        self.center = CGPointMake(x, y);
        return self;
    };
}


@end
