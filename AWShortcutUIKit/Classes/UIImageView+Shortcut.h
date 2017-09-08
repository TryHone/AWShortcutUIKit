//
//  UIImageView+Shortcut.h
//  Pods
//
//  Created by TryHone on 17/9/7.
//
//

#import <UIKit/UIKit.h>

@interface UIImageView (Shortcut)
+(UIImageView*)AW_ImageView:(void(^)(UIImageView * imageview))block;
@property(nonatomic,weak,readonly)UIImageView * (^AWimage)(UIImage *image);
@property(nonatomic,weak,readonly)UIImageView * (^AWimageQ)(NSString * imageName);
@property(nonatomic,weak,readonly)UIImageView * (^AWhighlightedImage)(UIImage *highlightedImage);
@property(nonatomic,weak,readonly)UIImageView * (^AWhighlightedImageQ)(NSString *highlightedImageName);
@property(nonatomic,weak,readonly)UIImageView * (^AWanimationImages)(NSArray<UIImage *> *animationImages);
@property(nonatomic,weak,readonly)UIImageView * (^AWhighlightedAnimationImages)(NSArray<UIImage *> *highlightedAnimationImages);
@property(nonatomic,weak,readonly)UIImageView * (^AWanimationDuration)(NSTimeInterval animationDuration);
@property(nonatomic,weak,readonly)UIImageView * (^AWanimationRepeatCount)(NSInteger animationRepeatCount);
@property(nonatomic,weak,readonly)UIImageView * (^AWtintColor)(UIColor *tintColor);
@property(nonatomic,weak,readonly)UIImageView * (^AWtintColorQ)(NSString *tintColorHexStr);
@property(nonatomic,weak,readonly)UIImageView * (^AWstartAnimating)();
@property(nonatomic,weak,readonly)UIImageView * (^AWstopAnimating)();

@property(nonatomic,weak,readonly)UIImageView * (^AWcornerRadius)(CGFloat cornerRadius);
@property(nonatomic,weak,readonly)UIImageView * (^AWborderColor)(UIColor * borderColor);
@property(nonatomic,weak,readonly)UIImageView * (^AWborderColorQ)(NSString * borderColorHexStr);
@property(nonatomic,weak,readonly)UIImageView * (^AWborderWidth)(CGFloat borderWidth);
@property(nonatomic,weak,readonly)UIImageView * (^AWborderSet)(CGFloat cornerRadius,CGFloat borderWidth,UIColor * borderColor);
@property(nonatomic,weak,readonly)UIImageView * (^AWborderSetQ)(CGFloat cornerRadius,CGFloat borderWidth,NSString * borderColorHexStr);
@property(nonatomic,weak,readonly)UIImageView * (^AWaddGestureRecognizer)(UIGestureRecognizer * gesture);
@property(nonatomic,weak,readonly)UIImageView * (^AWaddTapGestureRecognizer)(id target,SEL method);
@property(nonatomic,weak,readonly)UIImageView * (^AWbackgroundColor)(UIColor * backgroundColor);
@property(nonatomic,weak,readonly)UIImageView * (^AWbackgroundColorQ)(NSString * backgroundColorHexStr);

//位置相关
@property(nonatomic,weak,readonly)UIImageView * (^AWtag)(NSInteger tag);
@property(nonatomic,weak,readonly)UIImageView * (^AWframe)(CGRect rect);
@property(nonatomic,weak,readonly)UIImageView * (^AWframeQ)(CGFloat x,CGFloat y,CGFloat width,CGFloat height);
@property(nonatomic,weak,readonly)UIImageView * (^AWx)(CGFloat x);
@property(nonatomic,weak,readonly)UIImageView * (^AWy)(CGFloat y);
@property(nonatomic,weak,readonly)UIImageView * (^AWwidth)(CGFloat width);
@property(nonatomic,weak,readonly)UIImageView * (^AWheight)(CGFloat height);

@property(nonatomic,weak,readonly)UIImageView * (^AWbounds)(CGRect bounds);
@property(nonatomic,weak,readonly)UIImageView * (^AWboundsQ)(CGFloat width,CGFloat height);
@property(nonatomic,weak,readonly)UIImageView * (^AWcenter)(CGPoint center);
@property(nonatomic,weak,readonly)UIImageView * (^AWcenterQ)(CGFloat x,CGFloat y);

@end
