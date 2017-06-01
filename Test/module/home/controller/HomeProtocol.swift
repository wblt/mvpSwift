//
//  protocol.swift
//  Test
//
//  Created by haha on 17/5/31.
//  Copyright © 2017年 haha. All rights reserved.
//

import Foundation
import UIKit

protocol HomeProtocol:BaseProtocol {
    
    
    func showBackColor(color:UIColor);
    
    func showTableView(arr:Array<HomeCellModel>)
}

