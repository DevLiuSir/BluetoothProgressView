//
//  BluetoothProgressView.h
//  BluetoothProgressView-Objc
//
//  Created by Liu Chuan on 2018/2/21.
//  Copyright © 2018年 LC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BluetoothProgressView : UIView {
    
    @private    // 私有属性
    /// 蓝牙图片
    UIImageView *bleImageView;
    
    /// 圆圈脉冲视图数组
    NSArray *circleArray;
}

@end
