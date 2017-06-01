//
//  HomeTableViewAdapter.swift
//  Test
//
//  Created by haha on 17/6/1.
//  Copyright © 2017年 haha. All rights reserved.
//

import Foundation
import UIKit

class HomeTableViewAdapter:NSObject,UITableViewDataSource,UITableViewDelegate {
    var mProtocol:HomeTableViewProtocol?
    
    var mDatas:Array<HomeCellModel>!
    
    
    init(tableView:UITableView,arr:Array<HomeCellModel>,homeProtocol:HomeTableViewProtocol) {
        super.init();
        mDatas = arr
        mProtocol = homeProtocol
        
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    
    //行数
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mDatas!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier="identtifier";
        var cell=tableView.dequeueReusableCell(withIdentifier: identifier)
        if(cell == nil){
            cell=UITableViewCell(style: UITableViewCellStyle.value1, reuseIdentifier: identifier);
        }
        
        let model:HomeCellModel = mDatas[indexPath.row]
        
        cell?.textLabel?.text = model.name
        cell?.backgroundColor = UIColor.groupTableViewBackground
        cell?.detailTextLabel?.text = model.password
        cell?.detailTextLabel?.font = UIFont .systemFont(ofSize: CGFloat(13))
        cell?.accessoryType=UITableViewCellAccessoryType.disclosureIndicator
        
        return cell!
    }
    
}
