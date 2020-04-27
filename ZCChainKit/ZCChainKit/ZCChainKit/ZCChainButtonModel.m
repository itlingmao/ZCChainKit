//
//  ZCChainButtonModel.m
//  ZCChainKit
//
//  Created by 张超 on 2020/4/24.
//  Copyright © 2020 张超. All rights reserved.
//

#import "ZCChainButtonModel.h"

@interface ZCChainButtonModel ()



@end

@implementation ZCChainButtonModel

@synthesize zc_titleLabel = _zc_titleLabel;

-(zc_title)zc_titleLabel{
    
    if (!_zc_titleLabel) {
        
        __weak typeof(self) weakSelf = self;
        
        _zc_titleLabel = ^(NSString *title, UIControlState state){
            
            [weakSelf.zc_cuttrentButton setTitle:title forState:state];

            return weakSelf;
        };
    }
    return _zc_titleLabel;
}

@end
