//
//  UIView+ZCChainView.m
//  ZCChainKit
//
//  Created by 张超 on 2020/4/24.
//  Copyright © 2020 张超. All rights reserved.
//

#import "UIView+ZCChainView.h"
#import <objc/runtime.h>

@implementation UIView (ZCChainView)

- (ZCChainModel *)zc_chainModel
{
    ZCChainModel *zc_chainModel = objc_getAssociatedObject(self, _cmd);
    
    if (!zc_chainModel) {
        
        zc_chainModel = [ZCChainModel new];
        
        objc_setAssociatedObject(self, _cmd, zc_chainModel, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
        
        if ([self isKindOfClass:[UILabel class]]) {
            
            zc_chainModel.zc_label.zc_currentLabel = (UILabel *)self;
        }else if ([self isKindOfClass:[UIButton class]]) {
            
            zc_chainModel.zc_button.zc_cuttrentButton = (UIButton *)self;
        }
        
        zc_chainModel.zc_view.zc_currentView = self;
    }
    
    return zc_chainModel;
}
- (void)zc_chainInit:(NSString *)chain{
    
    id myObj = [[NSClassFromString(chain) alloc] init];
    
}
- (ZCChainViewModel *)zc_chainViewModel;{
    ZCChainViewModel *zc_chainModel = objc_getAssociatedObject(self, _cmd);
    
    if (!zc_chainModel) {
        
        zc_chainModel = [ZCChainViewModel new];
        
        objc_setAssociatedObject(self, _cmd, zc_chainModel, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
        
        
        zc_chainModel.zc_currentView = self;
        
    }
    return zc_chainModel;
}
- (ZCChainLabelModel *)zc_chainLabelModel;{
    ZCChainLabelModel *zc_chainModel = objc_getAssociatedObject(self, _cmd);
    
    if (!zc_chainModel) {
        
        zc_chainModel = [ZCChainLabelModel new];
        
        objc_setAssociatedObject(self, _cmd, zc_chainModel, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
        
        zc_chainModel.zc_currentLabel = (UILabel *)self;
        
    }
    return zc_chainModel;
}
- (ZCChainButtonModel *)zc_chainButtonModel;{
    ZCChainButtonModel *zc_chainModel = objc_getAssociatedObject(self, _cmd);
    
    if (!zc_chainModel) {
        
        zc_chainModel = [ZCChainButtonModel new];
        
        objc_setAssociatedObject(self, _cmd, zc_chainModel, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
        
        zc_chainModel.zc_cuttrentButton = (UIButton *)self;
        
    }
    return zc_chainModel;
}
- (id)zc_initChainModel:(id)chainModel{
    
    chainModel = [self chainModel];
    
    if (!chainModel) {
        
        chainModel = [ZCChainModel new];
        //给 view 添加属性
        [self setChainModel:chainModel];
    }
    return chainModel;
}
- (void)setChainModel:(id)chainModel
{
    
    objc_setAssociatedObject(self, @selector(chainModel), chainModel, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    
    ZCChainModel *chain = chainModel;
    NSLog(@"我是谁：%@", chain);
    if ([self isKindOfClass:[UILabel class]]) {
        
        chain.zc_label.zc_currentLabel = (UILabel *)self;
    }else if ([self isKindOfClass:[UIButton class]]) {
        
        chain.zc_button.zc_cuttrentButton = (UIButton *)self;
    }
    
    chain.zc_view.zc_currentView = self;
}

- (id)chainModel
{
    return objc_getAssociatedObject(self, _cmd);
}


@end

