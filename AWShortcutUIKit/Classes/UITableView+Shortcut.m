//
//  UITableView+Shortcut.m
//  mvp-test
//
//  Created by TryHone on 17/9/5.
//  Copyright © 2017年 TryHone. All rights reserved.
//

#import "UITableView+Shortcut.h"

@implementation UITableView (Shortcut)
+(UITableView*)AW_TableView:(void(^)(UITableView * tableview))block{
    UITableView * tableview = [[UITableView alloc] init];
    if (block) {
        block(tableview);
    }
    return tableview;
}
@end
