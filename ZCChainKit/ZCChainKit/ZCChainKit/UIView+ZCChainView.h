//
//  UIView+ZCChainView.h
//  ZCChainKit
//
//  Created by 张超 on 2020/4/24.
//  Copyright © 2020 张超. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZCChainModel.h"
//#import "ZCChainViewModel.h"
#import "ZCChainLabelModel.h"
#import "ZCChainButtonModel.h"
NS_ASSUME_NONNULL_BEGIN

typedef ZCChainButtonModel *_Nullable(^buttonModel)(UIButton *);
@interface UIView (ZCChainView)

//@property (nonatomic, strong, readonly)ZCChainModel *chainModel;

- (ZCChainModel *)zc_chainModel;
- (ZCChainViewModel *)zc_chainViewModel;
- (ZCChainLabelModel *)zc_chainLabelModel;
- (ZCChainButtonModel *)zc_chainButtonModel;
- (buttonModel)zc_chainButtonModelMake;
@end

NS_ASSUME_NONNULL_END
