//
//  ViewController.m
//  ZCChainKit
//
//  Created by 张超 on 2020/4/24.
//  Copyright © 2020 张超. All rights reserved.
//

#import "ViewController.h"
#import "UIView+ZCChainView.h"
#import "UIView+Frame.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UIView *viewChain = [[UIView alloc] init];
    
    viewChain.zc_chainModel.zc_frameMake(CGRectMake(20, 20, 40, 40));
    
    viewChain.backgroundColor = [UIColor redColor];
    
    [self.view addSubview:viewChain];
    
    UILabel *labelChain = [[UILabel alloc] init];
    
    labelChain.zc_chainModel.zc_frameMake(CGRectMake(viewChain.x + viewChain.width + 20, viewChain.y, viewChain.width+20, viewChain.height))
    .zc_label.zc_chainText(@"就是我");

    [self.view addSubview:labelChain];
    

    UIButton *buttonChain = [[UIButton alloc] init];
    
    buttonChain.zc_chainModel.zc_frameMake(CGRectMake(viewChain.x, viewChain.y + viewChain.height + 20, viewChain.width, viewChain.height))
    .zc_button.zc_titleLabel(@"点滴1", UIControlStateNormal);
    
    [buttonChain setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    buttonChain.zc_chainModel.zc_button.zc_titleLabel(@"点滴1", UIControlStateNormal);
    buttonChain.zc_chainButtonModel.zc_titleLabel(@"点滴1", UIControlStateNormal);
    buttonChain.zc_chainModel.zc_frameMake(CGRectMake(viewChain.x, viewChain.y + viewChain.height + 20, viewChain.width, viewChain.height));
    
    [self.view addSubview:buttonChain];
    
}


@end
