//
//  basemanager.swift
//  Test
//
//  Created by haha on 17/5/31.
//  Copyright © 2017年 haha. All rights reserved.
//

import Foundation
import UIKit
class Basemanager {
    var bs:BaseProtocol?
    init(vc:BaseController) {
        bs = vc
        bs?.initView()
        bs?.initEvent();
    }
}
