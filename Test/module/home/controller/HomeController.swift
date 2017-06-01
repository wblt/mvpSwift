//
//  ViewController.swift
//  Test
//
//  Created by haha on 17/5/31.
//  Copyright © 2017年 haha. All rights reserved.
//

import UIKit

class HomeController: BaseController{
    
    var m:HomeMananger?;
    
    var mTableView:UITableView!;
    
    var mHomeTableViewAdapter:HomeTableViewAdapter?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        m = HomeMananger(controller: self);
    }
    
    // 初始化视图
    override func initView() {
        // 创建表视图
        mTableView = UITableView.init(frame:CGRect(x: 0.0, y: 0.0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height-64), style:.plain)
        self.view.addSubview(mTableView!)           
        
        
    }
    
    // 初始化事件
    override func initEvent() {
        
        
    }
    
    // 初始化标题
    override func initTitle(name: String) {
        self.title = name as String;
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

//======= HomeProtocol 协议 ========
extension HomeController:HomeProtocol {
    
    // 显示表视图
    internal func showTableView(arr: Array<HomeCellModel>) {
        if mHomeTableViewAdapter == nil {
            mHomeTableViewAdapter = HomeTableViewAdapter(tableView:mTableView,arr:arr,homeProtocol:self)
        } else {
            mTableView.reloadData();
        }
    
    }

    
    // 显示背景颜色
    internal func showBackColor(color:UIColor) {
        self.view.backgroundColor = color;
        
        
    }
    
}


extension HomeController:HomeTableViewProtocol {
    
}

