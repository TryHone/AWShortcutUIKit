//
//  UILabel+Shortcut.m
//  mvp-test
//
//  Created by TryHone on 17/9/5.
//  Copyright © 2017年 TryHone. All rights reserved.
//

#import "UILabel+Shortcut.h"
#import "UIColor+AWColor.m"
#import "UIView+Shortcut.h"

@implementation UILabel (Shortcut)
+(UILabel*)AW_Lable:(void(^)(UILabel * lab))block{
    UILabel * lable = [[UILabel alloc] init];
    if (block) {
        block(lable);
    }
    return lable;
}

//快捷属性
-(UILabel * (^)(CGRect rect))AWframe{
    return ^(CGRect rect){
        self.frame = rect;
        return self;
    };
}
-(UILabel * (^)(CGFloat x,CGFloat y,CGFloat width,CGFloat height))AWframeQ{
 
    return ^(CGFloat x,CGFloat y,CGFloat width,CGFloat height){
        self.frame = CGRectMake(x, y, width, height) ;
        return self;
    };
}
-(UILabel * (^)(NSString * text))AWtext{
    return ^(NSString * text){
        self.text = text;
        return self;
    };
}
-(UILabel * (^)(UIFont * font))AWfont{
    return ^(UIFont * font){
        self.font = font;
        return self;
    };
}
-(UILabel * (^)(NSInteger sysfontsize))AWfontQ{
    return ^(NSInteger sysfontsize){
        self.font = [UIFont systemFontOfSize:sysfontsize];
        return self;
    };
}
-(UILabel * (^)(UIColor * color))AWtextColor{
    return ^(UIColor* color){
    
        self.textColor = color;
        return self;
    };
}
-(UILabel * (^)(NSString * colorhexStr))AWtextColorQ{
    return ^(NSString * colorhexStr){
        self.textColor = [UIColor colorWithHexString:colorhexStr];
        return self;
    };
}
-(UILabel * (^)(UIColor * color))AWshadowColor{
    return ^(UIColor * color){
        self.shadowColor = color;
        return self;
    };
}
-(UILabel * (^)(NSString * colorhexStr))AWshadowColorQ{
    return ^(NSString * colorhexStr){
        self.shadowColor = [UIColor colorWithHexString:colorhexStr];
        return self;
    };
}
-(UILabel * (^)(CGSize size))AWshadowOffset{
    return ^(CGSize size){
        self.shadowOffset = size;
        return self;
    };
}
-(UILabel * (^)(CGFloat width,CGFloat height))AWshadowOffsetQ{
    return ^(CGFloat width,CGFloat height){
        self.shadowOffset = CGSizeMake(width, height);
        return self;
    };
}
-(UILabel * (^)(NSTextAlignment  alignment))AWtextAlignment{
    return ^(NSTextAlignment  alignment){
        self.textAlignment = alignment;
        return self;
    };
}
-(UILabel * (^)(NSLineBreakMode lineBreakMode))AWlineBreakMode{
    return ^(NSLineBreakMode lineBreakMode){
        self.lineBreakMode = lineBreakMode;
        return self;
    };
}
-(UILabel * (^)(NSAttributedString * attributedText))AWattributedText{
    return ^(NSAttributedString * attributedText){
        self.attributedText = attributedText;
        return self;
    };
}
-(UILabel * (^)(UIColor * highlightedTextColor))AWhighlightedTextColor{
    return ^(UIColor * highlightedTextColor){
        self.highlightedTextColor = highlightedTextColor;
        return self;
    };
}
-(UILabel * (^)(NSString * colorhexStr))AWhighlightedTextColorQ{
    return ^(NSString * colorhexStr){
        self.highlightedTextColor = [UIColor colorWithHexString:colorhexStr];
        return self;
    };
}
-(UILabel * (^)(UIColor * backgroundColor))AWbackgroundColor{
    return ^(UIColor * backgroundColor){
        self.backgroundColor = backgroundColor;
        return self;
    };
}
-(UILabel * (^)(NSString * backgroundColorHexStr))AWbackgroundColorQ{
    return ^(NSString * backgroundColorHexStr){
        self.backgroundColor = [UIColor colorWithHexString:backgroundColorHexStr];
        return self;
    };
}
-(UILabel * (^)(CGFloat cornerRadius))AWcornerRadius{
    return ^(CGFloat cornerRadius){
        if (cornerRadius>0) {
            self.layer.masksToBounds = YES;
            self.layer.cornerRadius = cornerRadius;
        }
        return self;
    };
}
-(UILabel * (^)(UIColor * borderColor))AWborderColor{
    return ^(UIColor * borderColor){
        self.layer.borderColor = borderColor.CGColor;
        return self;
    };
}
-(UILabel * (^)(CGFloat borderWidth))AWborderWidth{
    return ^(CGFloat borderWidth){
        self.layer.borderWidth = borderWidth;
        return self;
    };
}
-(UILabel * (^)(CGFloat cornerRadius,CGFloat borderWidth,UIColor * borderColor))AWborderSet{
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

//位置相关
-(UILabel * (^)(NSInteger tag))AWtag{
    return ^(NSInteger tag){
        self.tag = tag;
        return self;
    };
}
-(UILabel * (^)(CGFloat x))AWx{
    return ^(CGFloat x){
        self.x = x;
        return self;
    };
}
-(UILabel * (^)(CGFloat y))AWy{
    return ^(CGFloat y){
        self.y = y;
        return self;
    };
}
-(UILabel * (^)(CGFloat width))AWwidth{
    return ^(CGFloat width){
        self.width = width;
        return self;
    };
}

-(UILabel * (^)(CGFloat height))AWheight{
    return ^(CGFloat height){
        self.height = height;
        return self;
    };
}
-(UILabel * (^)(CGRect bounds))AWbounds{
    return ^(CGRect bounds){
        self.bounds = bounds;
        return self;
    };
}
-(UILabel * (^)(CGFloat width,CGFloat height))AWboundsQ{
    return ^(CGFloat width,CGFloat height){
        self.bounds = CGRectMake(0, 0, width, height);
        return self;
    };
}
-(UILabel * (^)(CGPoint center))AWcenter{
    return ^(CGPoint center){
        self.center = center;
        return self;
    };
}
-(UILabel * (^)(CGFloat x,CGFloat y))AWcenterQ{
    return ^(CGFloat x,CGFloat y){
        self.center = CGPointMake(x, y);
        return self;
    };
}


@end
