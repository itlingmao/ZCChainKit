//
//  ZCChainModel.h
//  ZCChainKit
//
//  Created by 张超 on 2020/4/24.
//  Copyright © 2020 张超. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "ZCChainButtonModel.h"
#import "ZCChainLabelModel.h"
#import "ZCChainViewModel.h"

NS_ASSUME_NONNULL_BEGIN

@class ZCChainModel;

typedef ZCChainModel* _Nonnull(^zc_frame)(CGRect);

@interface ZCChainModel : NSObject

@property (nonatomic, copy, readonly)zc_frame zc_frameMake;


@property (nonatomic, strong) ZCChainViewModel *zc_view;
@property (nonatomic, strong) ZCChainLabelModel *zc_label;
@property (nonatomic, strong) ZCChainButtonModel *zc_button;

@end

NS_ASSUME_NONNULL_END
