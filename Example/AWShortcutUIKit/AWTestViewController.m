//
//  AWTestViewController.m
//  AWShortcutUIKit
//
//  Created by TryHone on 17/9/8.
//  Copyright © 2017年 gurongkang. All rights reserved.
//

#import "AWTestViewController.h"
#import "UIKit+Shortcut.h"
//#import "UILabel+Shortcut.h"


@interface AWTestViewController ()

@property(nonatomic,strong) UILabel * testLab;
@property(nonatomic,strong) UITextView * testTextView;
@property(nonatomic,strong) UITextField * testTextfield;
@property(nonatomic,strong) UIButton * testBtn;
@property(nonatomic,strong) UIImageView* testImage;

@end
@implementation AWTestViewController

-(void)viewDidLoad{
    [super viewDidLoad];
     self.view.AWbackgroundColor([UIColor whiteColor]);
    [self.view addSubview:self.testLab];
    [self.view addSubview:self.testTextfield];
    [self.view addSubview:self.testImage];
    [self.view addSubview:self.testBtn];
}

-(UILabel*)testLab{
    if (!_testLab) {
        _testLab = [UILabel AW_Lable:^(UILabel *lab) {
            lab.AWfontQ(12);
        }];
        _testLab.AWtext(@"测试文字");
        _testLab.AWframeQ(0,20,self.view.bounds.size.width,40).AWtextColor([UIColor redColor]).AWborderSet(5,1,[UIColor yellowColor]).AWbackgroundColor([UIColor grayColor]).AWtextAlignment(NSTextAlignmentCenter);
    }
    return _testLab;
}
-(UITextField*)testTextfield{
  
    if (!_testTextfield) {
        _testTextfield = [UITextField AW_TextField:^(UITextField *textfield) {
            textfield.AWframeQ(0,self.testLab.endY+10,self.testLab.width,self.testLab.height).AWbackgroundColor([UIColor lightGrayColor]).AWplaceholder(@"测试默认文字");
        }];
    }
    return _testTextfield;
}

-(UIImageView*)testImage{

    if (!_testImage) {
        _testImage = [UIImageView AW_ImageView:^(UIImageView *imageview) {
            imageview.AWframeQ(100,self.testTextfield.endY+10,200,200).AWimageQ(@"a").AWborderSet(100,5,[UIColor purpleColor]);
        }];
        _testImage.AWaddTapGestureRecognizer(self,@selector(tapImage));
    }
    return _testImage;
}
-(void)tapImage{
    NSLog(@"图片呗点击");
}
-(UIButton*)testBtn{
    if (!_testBtn) {
        _testBtn = [UIButton AW_Button:^(UIButton *btn) {
            
            btn.AWframeQ(0,self.testImage.endY+10,self.testLab.width,40).AWbackgroundColorQ(@"#667788").AWtitleColor([UIColor whiteColor],UIControlStateNormal).AWcornerRadius(5).AWtitle(@"点击",UIControlStateNormal);
            
        }];
        
        _testBtn.AWclickAction(self,@selector(btnClick));
        
        [_testBtn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return _testBtn;

}
-(void)btnClick{
    self.testLab.text = self.testTextfield.text;
}


@end
