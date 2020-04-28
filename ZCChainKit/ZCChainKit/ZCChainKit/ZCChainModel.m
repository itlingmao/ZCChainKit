//
//  ZCChainModel.m
//  ZCChainKit
//
//  Created by 张超 on 2020/4/24.
//  Copyright © 2020 张超. All rights reserved.
//

#import "ZCChainModel.h"
#import <objc/runtime.h>
@implementation ZCChainModel

@synthesize zc_frameMake = _zc_frameMake;

- (zc_frame)zc_frameMake {
    
    if (!_zc_frameMake) {
        
        __weak typeof(self) weakSelf = self;
        
        _zc_frameMake = ^(CGRect rect){
                
            weakSelf.zc_view.zc_currentView.frame = rect;
            
            return weakSelf;
        };
    }
    
    return _zc_frameMake;
}



-(ZCChainViewModel *)zc_view {
    if (!_zc_view) {
        _zc_view = [[ZCChainViewModel alloc] init];
    }
    return _zc_view;
}

-(ZCChainLabelModel *)zc_label{
    if (!_zc_label) {
        _zc_label = [[ZCChainLabelModel alloc] init];
    }
    return _zc_label;
}

-(ZCChainButtonModel *)zc_button {
    if (!_zc_button) {
        _zc_button = [[ZCChainButtonModel alloc] init];
        
    }
    return _zc_button;
}

@end
