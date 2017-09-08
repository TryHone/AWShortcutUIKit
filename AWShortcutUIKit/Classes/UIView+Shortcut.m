//
//  UIView+Shortcut.m
//  mvp-test
//
//  Created by TryHone on 17/9/5.
//  Copyright © 2017年 TryHone. All rights reserved.
//

#import "UIView+Shortcut.h"
#import "UIColor+AWColor.h"

@implementation UIView (Shortcut)
+(UIView*)AW_View:(void(^)(UIView * view))block{
    UIView * tempView = [[UIView alloc] init];
    if (block) {
        block(tempView);
    }
    return tempView;
}
-(CGFloat)x{
    return self.frame.origin.x;
}
-(void)setX:(CGFloat)x{
    self.frame = CGRectMake(x, self.y, self.width, self.height);
}
-(CGFloat)startX{
    return self.x;
}
-(CGFloat)endX{
    return self.x+self.width;
}
-(CGFloat)y{
    return self.frame.origin.y;
}
-(void)setY:(CGFloat)y{
    self.frame = CGRectMake(self.x, y, self.width, self.height);
}
-(CGFloat)startY{
    return self.y;
}
-(CGFloat)endY{
    return self.y+self.height;
}
-(CGFloat)width{
    return self.frame.size.width;
}
-(void)setWidth:(CGFloat)width{
    self.frame = CGRectMake(self.x, self.y, width, self.height);
}
-(CGFloat)height{
    return self.frame.size.height;
}
-(void)setHeight:(CGFloat)height{
    self.frame = CGRectMake(self.x, self.y, self.width, height);
}

-(UIView * (^)(NSInteger tag))AWtag{
    return ^(NSInteger tag){
        self.tag = tag;
        return self;
    };
}
-(UIView * (^)(CGRect rect))AWframe{
    return ^(CGRect rect){
        self.frame = rect;
        return self;
    };
}
-(UIView * (^)(CGFloat x,CGFloat y,CGFloat width,CGFloat height))AWframeQ{
    return ^(CGFloat x,CGFloat y,CGFloat width,CGFloat height){
        self.frame = CGRectMake(x, y, width, height);
        return self;
    };
}
-(UIView * (^)(CGFloat x))AWx{
    return ^(CGFloat x){
        self.x = x;
        return self;
    };
}
-(UIView * (^)(CGFloat y))AWy{
    return ^(CGFloat y){
        self.y = y;
        return self;
    };
}
-(UIView * (^)(CGFloat width))AWwidth{
    return ^(CGFloat width){
        self.width = width;
        return self;
    };
}

-(UIView * (^)(CGFloat height))AWheight{
    return ^(CGFloat height){
        self.height = height;
        return self;
    };
}
-(UIView * (^)(CGRect bounds))AWbounds{
    return ^(CGRect bounds){
        self.bounds = bounds;
        return self;
    };
}
-(UIView * (^)(CGFloat width,CGFloat height))AWboundsQ{
    return ^(CGFloat width,CGFloat height){
        self.bounds = CGRectMake(0, 0, width, height);
        return self;
    };
}
-(UIView * (^)(CGPoint center))AWcenter{
    return ^(CGPoint center){
        self.center = center;
        return self;
    };
}
-(UIView * (^)(CGFloat x,CGFloat y))AWcenterQ{
    return ^(CGFloat x,CGFloat y){
        self.center = CGPointMake(x, y);
        return self;
    };
}
-(UIView * (^)(UIColor * backgroundColor))AWbackgroundColor{
    return ^(UIColor * backgroundColor){
        self.backgroundColor = backgroundColor;
        return self;
    };
}
-(UIView * (^)(NSString * backgroundColorHexStr))AWbackgroundColorQ{
    return ^(NSString * backgroundColorHexStr){
        self.backgroundColor = [UIColor colorWithHexString:backgroundColorHexStr];
        return self;
    };
}

-(UIView * (^)(CGFloat cornerRadius))AWcornerRadius{
    return ^(CGFloat cornerRadius){
        if (cornerRadius>0) {
            self.layer.masksToBounds = YES;
            self.layer.cornerRadius = cornerRadius;
        }
        return self;
    };
}
-(UIView * (^)(UIColor * borderColor))AWborderColor{
    return ^(UIColor * borderColor){
        self.layer.borderColor = borderColor.CGColor;
        return self;
    };
}
-(UIView * (^)(CGFloat borderWidth))AWborderWidth{
    return ^(CGFloat borderWidth){
        self.layer.borderWidth = borderWidth;
        return self;
    };
}
-(UIView * (^)(CGFloat cornerRadius,CGFloat borderWidth,UIColor * borderColor))AWborderSet{
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

-(UIView * (^)(UIGestureRecognizer * gesture))AWaddGestureRecognizer{
    return ^(UIGestureRecognizer * gesture){
        self.userInteractionEnabled = YES;
        [self addGestureRecognizer:gesture];
        return self;
    };
}

-(UIView * (^)(id target,SEL method))AWaddTapGestureRecognizer{
    return ^(id target,SEL method){
        self.userInteractionEnabled = YES;
        UITapGestureRecognizer * PrivateLetterTap=[[UITapGestureRecognizer alloc]initWithTarget:self action:method];
        PrivateLetterTap.numberOfTouchesRequired = 1;
        PrivateLetterTap.numberOfTapsRequired = 1;
        [self addGestureRecognizer:PrivateLetterTap];
        return self;
    };

}



@end
