//
//  UITextField+Shortcut.m
//  mvp-test
//
//  Created by TryHone on 17/9/5.
//  Copyright © 2017年 TryHone. All rights reserved.
//

#import "UITextField+Shortcut.h"
#import "UIColor+AWColor.h"
#import "UIView+Shortcut.h"

@implementation UITextField (Shortcut)
+(UITextField*)AW_TextField:(void(^)(UITextField * textfield))block{
    UITextField * textfieldtemp = [[UITextField alloc] init];
    if (block) {
        block(textfieldtemp);
    }
    return textfieldtemp;
}

-(UITextField * (^)(NSString * text))AWtext{
    return ^(NSString * text){
        self.text = text;
        return self;
    };
}
-(UITextField * (^)(NSAttributedString * attributedText))AWattributedText{
    return ^(NSAttributedString * attributedText){
        self.attributedText = attributedText;
        return self;
    };
}
-(UITextField * (^)(UIColor * textColor))AWtextColor{
    return ^(UIColor * textColor){
        self.textColor = textColor;
        return self;
    };
}
-(UITextField * (^)(UIFont *font))AWfont{
    return ^(UIFont *font){
        self.font = font;
        return self;
    };
}
-(UITextField * (^)(NSTextAlignment textAlignment))AWtextAlignment{
    return ^(NSTextAlignment textAlignment){
        self.textAlignment = textAlignment;
        return self;
    };
}
-(UITextField * (^)(UITextBorderStyle borderStyle))AWborderStyle{
    return ^(UITextBorderStyle borderStyle){
        self.borderStyle = borderStyle;
        return self;
    };
}
-(UITextField * (^)(NSDictionary<NSString *, id> * defaultTextAttributes))AWdefaultTextAttributes{
    return ^(NSDictionary<NSString *, id> * defaultTextAttributes){
        self.defaultTextAttributes = defaultTextAttributes;
        return self;
    };
   
}
-(UITextField * (^)(NSString * placeholder))AWplaceholder{
  
    return ^(NSString * placeholder){
        self.placeholder = placeholder;
        return self;
    };
}

-(UITextField * (^)(NSAttributedString     *attributedPlaceholder))AWattributedPlaceholder{
    return ^(NSAttributedString     *attributedPlaceholder){
        self.attributedPlaceholder = attributedPlaceholder;
        return self;
    };
}
-(UITextField * (^)(UIImage  *background))AWbackgroundImage{
    return ^(UIImage  *background){
        self.background = background;
        return self;
    };
}

-(UITextField * (^)(UIImage *disabledBackground))AWdisabledBackgroundImage{
    return ^(UIImage *disabledBackground){
        self.disabledBackground = disabledBackground;
        return self;
    };
}
-(UITextField * (^)(UITextFieldViewMode  clearButtonMode))AWclearButtonMode{
    return ^(UITextFieldViewMode  clearButtonMode){
        self.clearButtonMode = clearButtonMode;
        return self;
    };
}

-(UITextField * (^)(UIView  * leftView))AWleftView{
    return ^(UIView  * leftView){
        self.leftView = leftView;
        return self;
    };
}
-(UITextField * (^)(UITextFieldViewMode  leftViewMode))AWleftViewMode{
    return ^(UITextFieldViewMode  leftViewMode){
        self.leftViewMode = leftViewMode;
        return self;
    };
}
-(UITextField * (^)(UIView  *rightView))AWrightView{
    return ^(UIView  *rightView){
        self.rightView = rightView;
        return self;
    };
}
-(UITextField * (^)(UITextFieldViewMode  rightViewMode))AWrightViewMode{
    return ^(UITextFieldViewMode  rightViewMode){
        self.rightViewMode = rightViewMode;
        return self;
    };
}
-(UITextField * (^)(UIView *inputView))AWinputView{
    return ^(UIView *inputView){
        self.inputView = inputView;
        return self;
    };
}
-(UITextField * (^)(UIView *inputAccessoryView))AWinputAccessoryView{
    return ^(UIView *inputAccessoryView){
        self.inputAccessoryView = inputAccessoryView;
        return self;
    };
}
-(UITextField * (^)(UIColor * backgroundColor))AWbackgroundColor{
    return ^(UIColor * backgroundColor){
        self.backgroundColor = backgroundColor;
        return self;
    };
}
-(UITextField * (^)(NSString * backgroundColorHexStr))AWbackgroundColorQ{
    return ^(NSString * backgroundColorHexStr){
        self.backgroundColor = [UIColor colorWithHexString:backgroundColorHexStr];
        return self;
    };
}

-(UITextField * (^)(CGFloat cornerRadius))AWcornerRadius{
    return ^(CGFloat cornerRadius){
        if (cornerRadius>0) {
            self.layer.masksToBounds = YES;
            self.layer.cornerRadius = cornerRadius;
        }
        return self;
    };
}
-(UITextField * (^)(UIColor * borderColor))AWborderColor{
    return ^(UIColor * borderColor){
        self.layer.borderColor = borderColor.CGColor;
        return self;
    };
}
-(UITextField * (^)(CGFloat borderWidth))AWborderWidth{
    return ^(CGFloat borderWidth){
        self.layer.borderWidth = borderWidth;
        return self;
    };
}
-(UITextField * (^)(CGFloat cornerRadius,CGFloat borderWidth,UIColor * borderColor))AWborderSet{
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

-(UITextField * (^)(NSInteger tag))AWtag{
    return ^(NSInteger tag){
        self.tag = tag;
        return self;
    };
}
-(UITextField * (^)(CGRect rect))AWframe{
    return ^(CGRect rect){
        self.frame = rect;
        return self;
    };
}
-(UITextField * (^)(CGFloat x,CGFloat y,CGFloat width,CGFloat height))AWframeQ{
    return ^(CGFloat x,CGFloat y,CGFloat width,CGFloat height){
        self.frame = CGRectMake(x, y, width, height);
        return self;
    };
}
-(UITextField * (^)(CGFloat x))AWx{
    return ^(CGFloat x){
        self.x = x;
        return self;
    };
}
-(UITextField * (^)(CGFloat y))AWy{
    return ^(CGFloat y){
        self.y = y;
        return self;
    };
}
-(UITextField * (^)(CGFloat width))AWwidth{
    return ^(CGFloat width){
        self.width = width;
        return self;
    };
}

-(UITextField * (^)(CGFloat height))AWheight{
    return ^(CGFloat height){
        self.height = height;
        return self;
    };
}
-(UITextField * (^)(CGRect bounds))AWbounds{
    return ^(CGRect bounds){
        self.bounds = bounds;
        return self;
    };
}
-(UITextField * (^)(CGFloat width,CGFloat height))AWboundsQ{
    return ^(CGFloat width,CGFloat height){
        self.bounds = CGRectMake(0, 0, width, height);
        return self;
    };
}
-(UITextField * (^)(CGPoint center))AWcenter{
    return ^(CGPoint center){
        self.center = center;
        return self;
    };
}
-(UITextField * (^)(CGFloat x,CGFloat y))AWcenterQ{
    return ^(CGFloat x,CGFloat y){
        self.center = CGPointMake(x, y);
        return self;
    };
}
@end
