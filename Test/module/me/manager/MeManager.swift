//
//  MeManager.swift
//  Test
//
//  Created by haha on 17/5/31.
//  Copyright © 2017年 haha. All rights reserved.
//

import Foundation
import UIKit

class MeManager:Basemanager {
    
    var mProtocol:MeProtocol?
    var mController:MeController?
    
    init(controller: MeController) {
        super.init(vc: controller)
        
        mProtocol = controller;
        mController = controller;
        
        // 设置标题
        mProtocol?.initTitle(name: "我的")
        // 设置背景颜色
        mProtocol?.showBackColor(color:UIColor.blue)
    }
    
    
    
}
