//
//  ZCChainLabelModel.h
//  ZCChainKit
//
//  Created by 张超 on 2020/4/24.
//  Copyright © 2020 张超. All rights reserved.
//

#import "ZCChainViewModel.h"

NS_ASSUME_NONNULL_BEGIN

@class ZCChainLabelModel;

typedef ZCChainLabelModel *_Nonnull(^zc_text)(NSString *);

@interface ZCChainLabelModel : ZCChainViewModel

@property (nonatomic, strong) UILabel *zc_currentLabel;

@property (nonatomic, copy, readonly)zc_text zc_chainText;

@end

NS_ASSUME_NONNULL_END
