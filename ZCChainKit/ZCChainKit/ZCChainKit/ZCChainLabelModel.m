//
//  ZCChainLabelModel.m
//  ZCChainKit
//
//  Created by 张超 on 2020/4/24.
//  Copyright © 2020 张超. All rights reserved.
//

#import "ZCChainLabelModel.h"

@implementation ZCChainLabelModel


@synthesize zc_chainText = _zc_chainText;

-(zc_text)zc_chainText {
    
    if (!_zc_chainText) {
        __weak typeof(self) weakSelf = self;
        
        _zc_chainText = ^(NSString *text){
            
            weakSelf.zc_currentLabel.text = text;
         
            return weakSelf;
        };
        
    }
    return _zc_chainText;
}

@end
