//
//  MainViewController.swift
//  DYZB-YW
//
//  Created by 于武 on 2017/7/28.
//  Copyright © 2017年 于武. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        addChildVc(storyName: "Home")
        addChildVc(storyName: "Live")
        addChildVc(storyName: "Follow")
        addChildVc(storyName: "Mine")
        
    }
   
    //添加子控制器方法
    private func addChildVc(storyName : String) {
    
        let childVc = UIStoryboard (name: storyName, bundle: nil).instantiateInitialViewController()!
        
        addChildViewController(childVc)
    
    
    
    }
    
    
    
   
}
