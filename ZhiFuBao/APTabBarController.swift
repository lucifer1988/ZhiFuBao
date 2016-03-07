//
//  APTabBarController.swift
//  ZhiFuBao
//
//  Created by liuyi on 16/3/7.
//  Copyright © 2016年 Lucifer. All rights reserved.
//

import UIKit

class APTabBarController: UITabBarController {
    override func viewDidLoad() {
        let tabBarIcons = ["TabBar_HomeBar", "TabBar_Friends", "TabBar_Businesses", "TabBar_Assets"]
        let tabBarSelectedIcons = ["TabBar_HomeBar_Sel", "TabBar_Friends_Sel", "TabBar_Businesses_Sel", "TabBar_Assets_Sel"]
        self.tabBar.barTintColor = UIColor.whiteColor()
        if let tabBarItems = self.tabBar.items {
            for (index, item) in tabBarItems.enumerate() {
                item.setTitleTextAttributes([NSForegroundColorAttributeName:UIColor.grayColor()], forState: UIControlState.Normal)
                item.setTitleTextAttributes([NSForegroundColorAttributeName:tabSelectColor], forState: UIControlState.Selected)
                item.image = UIImage(named: tabBarIcons[index])?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
                item.selectedImage = UIImage(named: tabBarSelectedIcons[index])?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
            }
        }
    }
}
