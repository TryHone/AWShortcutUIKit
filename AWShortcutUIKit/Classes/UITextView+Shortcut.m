//
//  UITextView+Shortcut.m
//  Pods
//
//  Created by TryHone on 17/9/7.
//
//

#import "UITextView+Shortcut.h"
#import "UIColor+AWColor.h"
#import "UIView+Shortcut.h"

@implementation UITextView (Shortcut)
+(UITextView*)AW_TextView:(void(^)(UITextView * view))block{
  
    UITextView * temp = [[UITextView alloc] init];
    if (block) {
        block(temp);
    }
    return temp;
}


-(UITextView * (^)(id<UITextViewDelegate> delegate))AWdelegate{

    return ^(id<UITextViewDelegate> delegate){
        self.delegate = delegate;
        return self;
    };

}
-(UITextView * (^)( NSString *text))AWtext{
    return ^( NSString *text){
        self.text = text;
        return self;
    };
}
-(UITextView * (^)( UIFont *font))AWfont{
    return ^(UIFont *font){
        self.font = font;
        return self;
    };
}
-(UITextView * (^)(NSInteger systemFontSize))AWfontQ{
    return ^(NSInteger systemFontSize){
        self.font = [UIFont systemFontOfSize:systemFontSize];
        return self;
    };
}


-(UITextView * (^)( UIColor *textColor))AWtextColor{

    return ^(UIColor *textColor){
    
        self.textColor = textColor;
        return self;
    };
  
}
-(UITextView * (^)( NSString *textColorStr))AWtextColorQ{
    return ^(NSString *textColorStr){
        self.textColor = [UIColor colorWithHexString:textColorStr];
        return self;
    };
}

-(UITextView * (^)( NSTextAlignment textAlignment))AWtextAlignment{
    return ^(NSTextAlignment textAlignment){
     
        self.textAlignment = textAlignment;
        return self;
    };
}

-(UITextView * (^)( NSRange selectedRange))AWselectedRange{
    return ^(NSRange selectedRange){
        self.selectedRange = selectedRange;
        return self;
    };
}
-(UITextView * (^)( NSAttributedString *attributedText))AWattributedText{
    return ^(NSAttributedString *attributedText){
        self.attributedText = attributedText;
        return self;
    };
}
-(UITextView * (^)(NSDictionary<NSString *, id> *typingAttributes))AWtypingAttributes{
    return ^(NSDictionary<NSString *, id> *typingAttributes){
        self.typingAttributes = typingAttributes;
        return self;
    };
}
-(UITextView * (^)( UIDataDetectorTypes dataDetectorTypes))AWdataDetectorTypes{

    return ^(UIDataDetectorTypes dataDetectorTypes){
        self.dataDetectorTypes = dataDetectorTypes;
        return self;
    };
}
-(UITextView * (^)(UIView *inputView))AWinputView{

    return ^(UIView *inputView){
        self.inputView = inputView;
        return self;
    };

}
-(UITextView * (^)(UIView *inputAccessoryView))AWinputAccessoryView{

    return ^(UIView *inputAccessoryView){
        self.inputAccessoryView = inputAccessoryView;
        return self;
    };

}
-(UITextView * (^)( UIEdgeInsets textContainerInset))AWtextContainerInset{

    return ^(UIEdgeInsets textContainerInset){
        self.textContainerInset = textContainerInset;
        return self;
    };
}
-(UITextView * (^)(NSDictionary<NSString *, id> *linkTextAttributes))AWlinkTextAttributes{
    return ^(NSDictionary<NSString *, id> *linkTextAttributes){
        self.linkTextAttributes = linkTextAttributes;
        return self;
    };

}
#pragma mark--基础属性
-(UITextView * (^)(NSInteger tag))AWtag{
    return ^(NSInteger tag){
        self.tag = tag;
        return self;
    };
}
-(UITextView * (^)(CGRect rect))AWframe{
    return ^(CGRect rect){
        self.frame = rect;
        return self;
    };
}
-(UITextView * (^)(CGFloat x,CGFloat y,CGFloat width,CGFloat height))AWframeQ{
    return ^(CGFloat x,CGFloat y,CGFloat width,CGFloat height){
        self.frame = CGRectMake(x, y, width, height);
        return self;
    };
}
-(UITextView * (^)(CGFloat x))AWx{
    return ^(CGFloat x){
        self.x = x;
        return self;
    };
}
-(UITextView * (^)(CGFloat y))AWy{
    return ^(CGFloat y){
        self.y = y;
        return self;
    };
}
-(UITextView * (^)(CGFloat width))AWwidth{
    return ^(CGFloat width){
        self.width = width;
        return self;
    };
}

-(UITextView * (^)(CGFloat height))AWheight{
    return ^(CGFloat height){
        self.height = height;
        return self;
    };
}
-(UITextView * (^)(CGRect bounds))AWbounds{
    return ^(CGRect bounds){
        self.bounds = bounds;
        return self;
    };
}
-(UITextView * (^)(CGFloat width,CGFloat height))AWboundsQ{
    return ^(CGFloat width,CGFloat height){
        self.bounds = CGRectMake(0, 0, width, height);
        return self;
    };
}
-(UITextView * (^)(CGPoint center))AWcenter{
    return ^(CGPoint center){
        self.center = center;
        return self;
    };
}
-(UITextView * (^)(CGFloat x,CGFloat y))AWcenterQ{
    return ^(CGFloat x,CGFloat y){
        self.center = CGPointMake(x, y);
        return self;
    };
}
-(UITextView * (^)(UIColor * backgroundColor))AWbackgroundColor{
    return ^(UIColor * backgroundColor){
        self.backgroundColor = backgroundColor;
        return self;
    };
}
-(UITextView * (^)(NSString * backgroundColorHexStr))AWbackgroundColorQ{
    return ^(NSString * backgroundColorHexStr){
        self.backgroundColor = [UIColor colorWithHexString:backgroundColorHexStr];
        return self;
    };
}

-(UITextView * (^)(CGFloat cornerRadius))AWcornerRadius{
    return ^(CGFloat cornerRadius){
        if (cornerRadius>0) {
            self.layer.masksToBounds = YES;
            self.layer.cornerRadius = cornerRadius;
        }
        return self;
    };
}
-(UITextView * (^)(UIColor * borderColor))AWborderColor{
    return ^(UIColor * borderColor){
        self.layer.borderColor = borderColor.CGColor;
        return self;
    };
}
-(UITextView * (^)(CGFloat borderWidth))AWborderWidth{
    return ^(CGFloat borderWidth){
        self.layer.borderWidth = borderWidth;
        return self;
    };
}
-(UITextView * (^)(CGFloat cornerRadius,CGFloat borderWidth,UIColor * borderColor))AWborderSet{
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

-(UITextView * (^)(UIGestureRecognizer * gesture))AWaddGestureRecognizer{
    return ^(UIGestureRecognizer * gesture){
        self.userInteractionEnabled = YES;
        [self addGestureRecognizer:gesture];
        return self;
    };
}

-(UITextView * (^)(id target,SEL method))AWaddTapGestureRecognizer{
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
