//
//  mananger.swift
//  Test
//
//  Created by haha on 17/5/31.
//  Copyright © 2017年 haha. All rights reserved.
//

import Foundation
import UIKit

class HomeMananger:Basemanager {
    // 控制器代理
    var mProtocol:HomeProtocol?
    // 控制器
    var mController:HomeController?;
    // 初始化方法
    init(controller:HomeController) {
        super.init(vc: controller)
        mProtocol = controller;
        mController = controller;
        
        
        // 设置背景颜色
        mProtocol?.showBackColor(color:UIColor.white);
        
        // 设置标题
        mProtocol?.initTitle(name: "主页")
        
        // 显示表视图
        test()

    }
    
    // 登录
    func login() {
        print("登录")
    }
    
    func test() {
        var arr:Array<HomeCellModel> = Array<HomeCellModel>()
        for _ in 0 ..< 3 {
            let model:HomeCellModel = HomeCellModel()
            model.name = "你好"
            model.password = "密码"
            arr.append(model)
        }
        mController?.showTableView(arr: arr)
    }
}
