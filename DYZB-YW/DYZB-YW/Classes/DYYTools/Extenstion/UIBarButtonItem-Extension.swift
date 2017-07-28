//
//  UIBarButtonItem-Extension.swift
//  DYZB-YW
//
//  Created by 于武 on 2017/7/28.
//  Copyright © 2017年 于武. All rights reserved.
//

import UIKit

extension UIBarButtonItem{
  //方法一：扩展一种类方法
  
//    class func creatItem(imageName :String,highImageName:String,size : CGSize) -> UIBarButtonItem{
//       
//        let btn = UIButton()
//        
//        btn.setImage(UIImage(named :imageName), for: .normal)
//        btn.setImage(UIImage(named :highImageName), for: .highlighted)
//        btn.frame = CGRect(origin:CGPoint.zero, size: size)
//        
//        return UIBarButtonItem(customView: btn)
//    
//    
//    }

    //方法二：1）利用便利构造函数。推荐使用 2）默认参数
    
    convenience init (imageName : String,highImageName : String = "", size : CGSize = CGSize.zero){
        let btn = UIButton()
        btn.setImage(UIImage(named :imageName), for: .normal)
        
        if highImageName != "" {
             btn.setImage(UIImage(named :highImageName), for: .highlighted)
        }
       
        if size == CGSize.zero {
            btn.sizeToFit()
        }else{
            btn.frame = CGRect(origin:CGPoint.zero, size: size)
        }
        
        self.init(customView :btn)
    

    }
    
    
}
