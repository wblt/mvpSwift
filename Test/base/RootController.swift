//
//  RootController.swift
//  Test
//
//  Created by haha on 17/5/31.
//  Copyright © 2017年 haha. All rights reserved.
//

import UIKit

class RootController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.creatSubViewControllers()
    }
    
    func creatSubViewControllers() {
        let homeVC:HomeController = HomeController();
        let homeItem:UITabBarItem = UITabBarItem();
        homeItem.title = "主页"
        homeVC.tabBarItem = homeItem;
        
        
        let meVC:MeController = MeController();
        let meItem:UITabBarItem = UITabBarItem();
        meItem.title = "我的"
        meVC.tabBarItem = meItem;
        
        
        let vcArrary = [homeVC,meVC];
        var navVCArr = Array<BaseNavController>()
        for vc in vcArrary {
            let nav:BaseNavController = BaseNavController(rootViewController:vc);
            navVCArr.append(nav)
        }
        self.viewControllers = navVCArr;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
