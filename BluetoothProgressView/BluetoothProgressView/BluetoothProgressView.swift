//
//  BluetoothProgressView.swift
//  BluetoothProgressView
//
//  Created by Liu Chuan on 2018/2/2.
//  Copyright © 2018年 LC. All rights reserved.
//

import UIKit

/// 蓝牙进度视图
class BluetoothProgressView: UIView {

    /// 圆圈脉冲视图数组
    private var circleArray = [UIView(), UIView(), UIView(), UIView()]
    
    /// 蓝牙图片
    private var bleImageView: UIImageView = UIImageView()
    
    /* 通知接收者它已经被添加到窗口中 */
    override func didMoveToWindow() {
        super.didMoveToWindow()
        
        /// 蓝牙颜色
        let BleColor = color(r: 0, g: 117, b: 255, a: 1.0)
        
        /// 放大比例
        let scale = CGFloat(circleArray.count + 1)
        
        /// 持续时间
        let duration = TimeInterval(circleArray.count)
        
        /// 延迟
        var delay = 0.0
        
        // 遍历圆圈视图数组,并设置圆圈脉冲视图的属性
        for circle in circleArray {
            set(view: circle)
            circle.backgroundColor = BleColor
            addSubview(circle)
            // 动画
            UIView.animate(withDuration: duration, delay: delay, options: .repeat, animations: {
                circle.transform = CGAffineTransform(scaleX: scale, y: scale)
                circle.alpha = 0.0
            }, completion: nil)
            delay += 1.0
        }
        bleImageView.image = UIImage(named: "ble")
        bleImageView.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        bleImageView.center = self.center
        addSubview(bleImageView)
    }
    
    /// 设置视图
    ///
    /// - Parameter view: 视图
    private func set(view: UIView) {
        view.frame = CGRect(x: 0,y: 0,width: 80,height: 80)
        view.center = self.center
        view.layer.cornerRadius = 40
    }
    
    /// RGB转UIColor(16进制)带透明度
    private func color(r: CGFloat,g: CGFloat,b: CGFloat,a: CGFloat) -> UIColor {
        return UIColor(red: CGFloat(r/255.0), green: CGFloat(g/255.0), blue: CGFloat(b/255.0), alpha: CGFloat(a))
    }
}
