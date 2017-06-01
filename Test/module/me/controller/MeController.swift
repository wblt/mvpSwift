//
//  MeViewController.swift
//  Test
//
//  Created by haha on 17/5/31.
//  Copyright © 2017年 haha. All rights reserved.
//

import UIKit

class MeController: BaseController,MeProtocol {
    

    var m:MeManager?;
    
    override func viewDidLoad() {
        super.viewDidLoad()

        m = MeManager(controller:self);
    }
    
    override func initView() {
        
    }
    
    override func initEvent() {
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func initTitle(name: String) {
        self.title = name as String;
    }
    
    func showBackColor(color:UIColor) {
        self.view.backgroundColor = color
    }
    


}
