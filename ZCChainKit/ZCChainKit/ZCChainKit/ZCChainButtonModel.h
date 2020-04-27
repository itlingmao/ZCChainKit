//
//  ZCChainButtonModel.h
//  ZCChainKit
//
//  Created by 张超 on 2020/4/24.
//  Copyright © 2020 张超. All rights reserved.
//

#import "ZCChainViewModel.h"
NS_ASSUME_NONNULL_BEGIN

@class ZCChainButtonModel;

typedef ZCChainButtonModel *_Nonnull(^zc_title)(NSString * ,UIControlState);

@interface ZCChainButtonModel : ZCChainViewModel

@property (nonatomic, strong) UIButton *zc_cuttrentButton;

@property (nonatomic, copy, readonly)zc_title zc_titleLabel;

@end

NS_ASSUME_NONNULL_END
