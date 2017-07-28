//
//  HomeViewController.swift
//  DYZB-YW
//
//  Created by 于武 on 2017/7/28.
//  Copyright © 2017年 于武. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

            setupUI()
        
        
    }

  
}


//设置UI界面
extension HomeViewController {
    
    //private
     func setupUI() {
        //1.设置导航栏
        setupNavigationBar()
  
    
    }
    
    //设置导航栏方法
    private func   setupNavigationBar(){
       //1)设置左侧按钮
//        let btn = UIButton()
//        btn.setImage(UIImage(named:"logo"), for: .normal)
//        btn.sizeToFit()
        navigationItem.leftBarButtonItem = UIBarButtonItem(imageName: "logo")
        //2)设置右侧按钮组
        let size = CGSize(width: 40, height: 40)
       
       //方法一 添加类方法
        // let historyItem = UIBarButtonItem.creatItem(imageName: "image_my_history", highImageName: "Image_my_history_click", size: size)
      
        //let searchItem = UIBarButtonItem.creatItem(imageName: "btn_search", highImageName: "btn_search_clicked", size: size)
        
       // let qrcodeItem = UIBarButtonItem.creatItem(imageName: "Image_scan", highImageName: "Image_scan_click", size: size)
    //方法二 便利构造
    let historyItem = UIBarButtonItem(imageName: "image_my_history", highImageName: "Image_my_history_click", size: size)
    let searchItem = UIBarButtonItem(imageName: "btn_search", highImageName: "btn_search_clicked", size: size)
    let qrcodeItem = UIBarButtonItem(imageName: "Image_scan", highImageName: "Image_scan_click", size: size)
        navigationItem.rightBarButtonItems = [historyItem, searchItem,qrcodeItem]
    }


}
