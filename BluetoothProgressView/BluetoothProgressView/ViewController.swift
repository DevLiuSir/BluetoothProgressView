//
//  ViewController.swift
//  BluetoothProgressView
//
//  Created by Liu Chuan on 2018/2/2.
//  Copyright © 2018年 LC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        /* BluetoothProgressView */
        let bleProgressView = BluetoothProgressView(frame: self.view.bounds)
        view.addSubview(bleProgressView)
    }
}

