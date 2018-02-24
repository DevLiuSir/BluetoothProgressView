//
//  BluetoothProgressView.m
//  BluetoothProgressView-Objc
//
//  Created by Liu Chuan on 2018/2/21.
//  Copyright © 2018年 LC. All rights reserved.
//

#import "BluetoothProgressView.h"

/// 蓝牙进度视图
@implementation BluetoothProgressView



/**
 通知接收者它已经被添加到窗口中
 */
- (void)didMoveToWindow {
    [super didMoveToWindow];

    // UIView
    UIView *v1 = [[UIView alloc] init];
    UIView *v2 = [[UIView alloc] init];
    UIView *v3 = [[UIView alloc] init];
    UIView *v4 = [[UIView alloc] init];
    
    // 把UIView加入数组中
    circleArray = [[NSArray alloc] initWithObjects:v1, v2, v3, v4, nil];
    
    // 初始化 UIImageView 对象
    bleImageView = [[UIImageView alloc] init];
    
    /// 蓝牙颜色
    UIColor *BleColor = [self colorWithR:0 g:117 b:255 a:1.0];
    
    /// 放大比例
    CGFloat scale = circleArray.count + 1;
    
    /// 持续时间
    double duration = circleArray.count;
    
    /// 延迟
    static double delay = 0.0;
    
    // 遍历圆圈视图数组,并设置圆圈脉冲视图的属性
    for (UIView *circle in circleArray) {
        
        [self set:circle];
        circle.backgroundColor = BleColor;
        [self addSubview:circle];
        
         // 动画
        [UIView animateWithDuration:duration delay:delay options:UIViewAnimationOptionRepeat animations:^{
            circle.transform = CGAffineTransformMakeScale(scale, scale);
            circle.alpha = 0.0;
        } completion:nil];
        delay = delay + 1.0;
      }
    bleImageView.frame = CGRectMake(0, 0, 50, 50);
    bleImageView.image = [UIImage imageNamed:@"ble"];
    bleImageView.center = self.center;
    [self addSubview:bleImageView];
}


/**
 设置视图
 
 @param view 视图
 */
- (void)set:(UIView *)view {
    view.frame = CGRectMake(0, 0, 80, 80);
    view.center = self.center;
    view.layer.cornerRadius = 40;
}

/**
   RGB转UIColor(16进制)带透明度
 
 @param r 红色
 @param g 绿色
 @param b 蓝色
 @param a 透明度
 @return UIColor
 */
- (UIColor *)colorWithR:(CGFloat)r g:(CGFloat)g b:(CGFloat)b a:(CGFloat)a {
    return [UIColor colorWithRed:r / 255.0 green:g / 255.0 blue:b / 255.0 alpha: a];
    
}

@end
