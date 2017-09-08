//
//  UIColor+AWColor.h
//  Pods
//
//  Created by TryHone on 17/9/6.
//
//

#import <UIKit/UIKit.h>

@interface UIColor (AWColor)
// 颜色转换：iOS中（以#开头）十六进制的颜色转换为UIColor(RGB)
+ (UIColor *) colorWithHexString: (NSString *)color;
@end
