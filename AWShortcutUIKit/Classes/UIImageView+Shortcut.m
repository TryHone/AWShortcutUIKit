//
//  UIImageView+Shortcut.m
//  Pods
//
//  Created by TryHone on 17/9/7.
//
//

#import "UIImageView+Shortcut.h"
#import "UIColor+AWColor.h"
#import "UIView+Shortcut.h"

@implementation UIImageView (Shortcut)
+(UIImageView*)AW_ImageView:(void(^)(UIImageView * imageview))block{
    UIImageView * temp = [[UIImageView alloc] init];
    if (block) {
        block(temp);
    }
    return temp;
}
-(UIImageView * (^)(UIImage *image))AWimage{
    return ^(UIImage *image){
        self.image = image;
        return self;
    };
}
-(UIImageView * (^)(NSString * imageName))AWimageQ{
    return ^(NSString * imageName){
        self.image = [UIImage imageNamed:imageName];
        return self;
    };
}
-(UIImageView * (^)(UIImage *highlightedImage))AWhighlightedImage{
    return ^(UIImage *highlightedImage){
        self.highlightedImage = highlightedImage;
        return self;
    };
}
-(UIImageView * (^)(NSString *highlightedImageName))AWhighlightedImageQ{
    return ^(NSString *highlightedImageName){
        self.highlightedImage = [UIImage imageNamed:highlightedImageName];
        return self;
    };
}

-(UIImageView * (^)(NSArray<UIImage *> *animationImages))AWanimationImages{
    return ^(NSArray<UIImage *> *animationImages){
        self.animationImages = animationImages;
        return self;
    };
}
-(UIImageView * (^)(NSArray<UIImage *> *highlightedAnimationImages))AWhighlightedAnimationImages{
    return ^(NSArray<UIImage *> *highlightedAnimationImages){
        self.highlightedAnimationImages = highlightedAnimationImages;
        return self;
    };
}
-(UIImageView * (^)(NSTimeInterval animationDuration))AWanimationDuration{
    return ^(NSTimeInterval animationDuration){
        self.animationDuration = animationDuration;
        return self;
    };
}
-(UIImageView * (^)(NSInteger animationRepeatCount))AWanimationRepeatCount{
    return ^(NSInteger animationRepeatCount){
        self.animationRepeatCount = animationRepeatCount;
        return self;
    };
}
-(UIImageView * (^)(UIColor *tintColor))AWtintColor{
    return ^(UIColor *tintColor){
        self.tintColor = tintColor;
        return self;
    };
}
-(UIImageView * (^)(NSString *tintColorHexStr))AWtintColorQ{
    return ^(NSString *tintColorHexStr){
        self.tintColor = [UIColor colorWithHexString:tintColorHexStr];
        return self;
    };
}
-(UIImageView * (^)())AWstartAnimating{
    return ^(){
        [self startAnimating];
        return self;
    };
}
-(UIImageView * (^)())AWstopAnimating{
    return ^(){
        [self stopAnimating];
        return self;
    };
}

-(UIImageView * (^)(CGFloat cornerRadius))AWcornerRadius{
    return ^(CGFloat cornerRadius){
        if (cornerRadius>0) {
            self.layer.masksToBounds = YES;
            self.layer.cornerRadius = cornerRadius;
        }
        return self;
    };
}
-(UIImageView * (^)(UIColor * borderColor))AWborderColor{
    return ^(UIColor * borderColor){
        self.layer.borderColor = borderColor.CGColor;
        return self;
    };
}
-(UIImageView * (^)(NSString * borderColorHexStr))AWborderColorQ{
    return ^(NSString * borderColorHexStr){
        self.layer.borderColor = [UIColor colorWithHexString:borderColorHexStr].CGColor;
        return self;
    };
}
-(UIImageView * (^)(CGFloat borderWidth))AWborderWidth{
    return ^(CGFloat borderWidth){
        self.layer.borderWidth = borderWidth;
        return self;
    };
}
-(UIImageView * (^)(CGFloat cornerRadius,CGFloat borderWidth,UIColor * borderColor))AWborderSet{
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
-(UIImageView * (^)(CGFloat cornerRadius,CGFloat borderWidth,NSString * borderColorHexStr))AWborderSetQ{

    return ^(CGFloat cornerRadius,CGFloat borderWidth,NSString * borderColorHexStr){
        
        if (cornerRadius>0) {
            self.layer.masksToBounds = YES;
            self.layer.cornerRadius = cornerRadius;
        }
        if (borderWidth) {
            self.layer.borderWidth = borderWidth;
        }
        if (borderColorHexStr) {
            self.layer.borderColor = [UIColor colorWithHexString:borderColorHexStr].CGColor;
        }
        return self;
    };
}

-(UIImageView * (^)(UIGestureRecognizer * gesture))AWaddGestureRecognizer{
    return ^(UIGestureRecognizer * gesture){
        self.userInteractionEnabled = YES;
        [self addGestureRecognizer:gesture];
        return self;
    };
}

-(UIImageView * (^)(id target,SEL method))AWaddTapGestureRecognizer{
    return ^(id target,SEL method){
        self.userInteractionEnabled = YES;
        UITapGestureRecognizer * PrivateLetterTap=[[UITapGestureRecognizer alloc]initWithTarget:target action:method];
        PrivateLetterTap.numberOfTouchesRequired = 1;
        PrivateLetterTap.numberOfTapsRequired = 1;
        [self addGestureRecognizer:PrivateLetterTap];
        return self;
    };
    
}

-(UIImageView * (^)(UIColor * backgroundColor))AWbackgroundColor{
    return ^(UIColor * backgroundColor){
        self.backgroundColor = backgroundColor;
        return self;
    };
}
-(UIImageView * (^)(NSString * backgroundColorHexStr))AWbackgroundColorQ{
    return ^(NSString * backgroundColorHexStr){
        self.backgroundColor = [UIColor colorWithHexString:backgroundColorHexStr];
        return self;
    };
}

-(UIImageView * (^)(NSInteger tag))AWtag{
    return ^(NSInteger tag){
        self.tag = tag;
        return self;
    };
}
-(UIImageView * (^)(CGRect rect))AWframe{
    return ^(CGRect rect){
        self.frame = rect;
        return self;
    };
}
-(UIImageView * (^)(CGFloat x,CGFloat y,CGFloat width,CGFloat height))AWframeQ{
    return ^(CGFloat x,CGFloat y,CGFloat width,CGFloat height){
        self.frame = CGRectMake(x, y, width, height);
        return self;
    };
}
-(UIImageView * (^)(CGFloat x))AWx{
    return ^(CGFloat x){
        self.x = x;
        return self;
    };
}
-(UIImageView * (^)(CGFloat y))AWy{
    return ^(CGFloat y){
        self.y = y;
        return self;
    };
}
-(UIImageView * (^)(CGFloat width))AWwidth{
    return ^(CGFloat width){
        self.width = width;
        return self;
    };
}

-(UIImageView * (^)(CGFloat height))AWheight{
    return ^(CGFloat height){
        self.height = height;
        return self;
    };
}
-(UIImageView * (^)(CGRect bounds))AWbounds{
    return ^(CGRect bounds){
        self.bounds = bounds;
        return self;
    };
}
-(UIImageView * (^)(CGFloat width,CGFloat height))AWboundsQ{
    return ^(CGFloat width,CGFloat height){
        self.bounds = CGRectMake(0, 0, width, height);
        return self;
    };
}
-(UIImageView * (^)(CGPoint center))AWcenter{
    return ^(CGPoint center){
        self.center = center;
        return self;
    };
}
-(UIImageView * (^)(CGFloat x,CGFloat y))AWcenterQ{
    return ^(CGFloat x,CGFloat y){
        self.center = CGPointMake(x, y);
        return self;
    };
}

@end
