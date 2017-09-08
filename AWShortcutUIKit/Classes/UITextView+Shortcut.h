//
//  UITextView+Shortcut.h
//  Pods
//
//  Created by TryHone on 17/9/7.
//
//

#import <UIKit/UIKit.h>

@interface UITextView (Shortcut)
+(UITextView*)AW_TextView:(void(^)(UITextView * view))block;

#pragma mark--UITextView属性
@property(nonatomic,weak,readonly)UITextView * (^AWdelegate)(id<UITextViewDelegate> delegate);
@property(nonatomic,weak,readonly)UITextView * (^AWtext)( NSString *text);
@property(nonatomic,weak,readonly)UITextView * (^AWfont)( UIFont *font);
@property(nonatomic,weak,readonly)UITextView * (^AWfontQ)(NSInteger systemFontSize);
@property(nonatomic,weak,readonly)UITextView * (^AWtextColor)( UIColor *textColor);
@property(nonatomic,weak,readonly)UITextView * (^AWtextColorQ)( NSString *textColorStr);
@property(nonatomic,weak,readonly)UITextView * (^AWtextAlignment)( NSTextAlignment textAlignment);
@property(nonatomic,weak,readonly)UITextView * (^AWselectedRange)( NSRange selectedRange);
@property(nonatomic,weak,readonly)UITextView * (^AWattributedText)( NSAttributedString *attributedText);
@property(nonatomic,weak,readonly)UITextView * (^AWtypingAttributes)(NSDictionary<NSString *, id> *typingAttributes);
@property(nonatomic,weak,readonly)UITextView * (^AWdataDetectorTypes)( UIDataDetectorTypes dataDetectorTypes);
@property(nonatomic,weak,readonly)UITextView * (^AWinputView)(UIView *inputView);
@property(nonatomic,weak,readonly)UITextView * (^AWinputAccessoryView)(UIView *inputAccessoryView);
@property(nonatomic,weak,readonly)UITextView * (^AWtextContainerInset)( UIEdgeInsets textContainerInset);
@property(nonatomic,weak,readonly)UITextView * (^AWlinkTextAttributes)(NSDictionary<NSString *, id> *linkTextAttributes);


#pragma mark--基础属性
@property(nonatomic,weak,readonly)UITextView * (^AWtag)(NSInteger tag);
@property(nonatomic,weak,readonly)UITextView * (^AWframe)(CGRect rect);
@property(nonatomic,weak,readonly)UITextView * (^AWframeQ)(CGFloat x,CGFloat y,CGFloat width,CGFloat height);
@property(nonatomic,weak,readonly)UITextView * (^AWx)(CGFloat x);
@property(nonatomic,weak,readonly)UITextView * (^AWy)(CGFloat y);
@property(nonatomic,weak,readonly)UITextView * (^AWwidth)(CGFloat width);
@property(nonatomic,weak,readonly)UITextView * (^AWheight)(CGFloat height);

@property(nonatomic,weak,readonly)UITextView * (^AWbounds)(CGRect bounds);
@property(nonatomic,weak,readonly)UITextView * (^AWboundsQ)(CGFloat width,CGFloat height);
@property(nonatomic,weak,readonly)UITextView * (^AWcenter)(CGPoint center);
@property(nonatomic,weak,readonly)UITextView * (^AWcenterQ)(CGFloat x,CGFloat y);
@property(nonatomic,weak,readonly)UITextView * (^AWbackgroundColor)(UIColor * backgroundColor);
@property(nonatomic,weak,readonly)UITextView * (^AWbackgroundColorQ)(NSString * backgroundColorHexStr);
//圆角相关
@property(nonatomic,weak,readonly)UITextView * (^AWcornerRadius)(CGFloat cornerRadius);
@property(nonatomic,weak,readonly)UITextView * (^AWborderColor)(UIColor * borderColor);
@property(nonatomic,weak,readonly)UITextView * (^AWborderWidth)(CGFloat borderWidth);
@property(nonatomic,weak,readonly)UITextView * (^AWborderSet)(CGFloat cornerRadius,CGFloat borderWidth,UIColor * borderColor);
@property(nonatomic,weak,readonly)UITextView * (^AWaddGestureRecognizer)(UIGestureRecognizer * gesture);
@property(nonatomic,weak,readonly)UITextView * (^AWaddTapGestureRecognizer)(id target,SEL method);

@end
