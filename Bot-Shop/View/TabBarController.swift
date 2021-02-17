//
//  TabBarController.swift
//  Bot-Shop
//
//  Created by X Y on 2/17/21.
//

import Foundation
import UIKit

class TabBarController: UITabBarController, UITabBarControllerDelegate{
    
    var firstItemImageView: UIImageView!
    var secondItemImageView: UIImageView!
    var thirdItemImageView: UIImageView!
    var fourthItemImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.delegate = self
        
        setupViewControllers()
        setupTabBarIcons()
    }
    
    //takes in UIImageViews and adds them as subvies in the tab ba, placing icon init
    func setupTabBarIcons() {
        
        let firstItemView = self.tabBar.subviews[0]
        let secondItemView = self.tabBar.subviews[1]
        let thirdItemImageView = self.tabBar.subviews[2]
        let fourthItemImageView = self.tabBar.subviews[3]
        
        self.firstItemImageView = (firstItemView.subviews.first as! UIImageView)
        self.firstItemImageView.contentMode = .center

        self.secondItemImageView = (secondItemView.subviews.first as! UIImageView)
        self.secondItemImageView.contentMode = .center
        
        self.thirdItemImageView = (thirdItemImageView.subviews.first as! UIImageView)
        self.thirdItemImageView.contentMode = .center
        
        self.fourthItemImageView = (thirdItemImageView.subviews.first as! UIImageView)
        self.fourthItemImageView.contentMode = .center
    }
    
    //setup viewControllers and assigned icons in the tabbar
    func setupViewControllers() {
        let newBoxVC = NewOrderViewController()
        let navController1 = UINavigationController(rootViewController:newBoxVC)
        newBoxVC.tabBarItem = UITabBarItem(title: "New", image: UIImage(named: "tab-box"), tag: 0)

        let pastBoxesVC = PastOrderViewController()
        let navController2 = UINavigationController(rootViewController:pastBoxesVC)
        pastBoxesVC.tabBarItem = UITabBarItem(title: "History", image: UIImage(named: "tab-history"), tag: 1)
        
        let tabHomeVC = tabHomeViewController()
        let navController3 = UINavigationController(rootViewController:tabHomeVC)
        tabHomeVC.tabBarItem = UITabBarItem(title: "home", image: UIImage(named: "tab-home"), tag: 2)
        
        let profileVC = ProfileViewController()
        let navController4 = UINavigationController(rootViewController:profileVC)
        profileVC.tabBarItem = UITabBarItem(title: "profile", image: UIImage(named: "tab-profile"), tag: 3)


        viewControllers = [navController1, navController2, navController3, navController4]
    }
}
