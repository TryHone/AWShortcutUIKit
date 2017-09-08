//
//  AWViewController.m
//  AWShortcutUIKit
//
//  Created by gurongkang on 09/06/2017.
//  Copyright (c) 2017 gurongkang. All rights reserved.
//

#import "AWViewController.h"
#import "UIKit+Shortcut.h"
#import "AWTestViewController.h"


@interface AWViewController ()

@end

@implementation AWViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
   
    
    [self.view addSubview:[UILabel AW_Lable:^(UILabel *lab) {
        
        
    }]];

}
- (IBAction)doTest:(id)sender {
    
    AWTestViewController * test = [[AWTestViewController alloc] init];
    [self presentViewController:test animated:YES completion:^{
        
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
