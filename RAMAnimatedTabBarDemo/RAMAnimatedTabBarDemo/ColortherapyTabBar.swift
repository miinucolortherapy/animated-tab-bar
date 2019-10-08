//
//  ColortherapyTabBar.swift
//  RAMAnimatedTabBarDemo
//
//  Created by Vladislav Kondrashkov on 10/8/19.
//  Copyright © 2019 Ramotion. All rights reserved.
//

import UIKit

class ColortherapyTabBar: RAMAnimatedTabBarController {
    private let firstTab = UINavigationController()
    private let secondTab = UINavigationController()
    private let thirdTab = UINavigationController()

    override func viewDidLoad() {
        super.viewDidLoad()

        let firstPushMeVC = PushMeViewController()
        firstPushMeVC.view.backgroundColor = .red
        firstTab.viewControllers = [firstPushMeVC]
        let firstTabBarItem = RAMAnimatedTabBarItem(
            title: "Profile",
            image: UIImage(named: "icon_pin"),
            selectedImage: UIImage(named: "icon_pin")
        )
        firstTabBarItem.animation = RAMFumeAnimation()
        firstTab.tabBarItem = firstTabBarItem

        let secondPushMeVC = PushMeViewController()
        secondPushMeVC.view.backgroundColor = .green
        secondTab.viewControllers = [secondPushMeVC]
        let secondTabBarItem = RAMAnimatedTabBarItem(
            title: "Challenges",
            image: UIImage(named: "icon_user"),
            selectedImage: UIImage(named: "icon_user")
        )
        secondTabBarItem.animation = RAMFumeAnimation()
        secondTab.tabBarItem = secondTabBarItem

        let thirdPushMeVC = PushMeViewController()
        thirdPushMeVC.view.backgroundColor = .blue
        thirdTab.viewControllers = [thirdPushMeVC]
        let thirdTabBarItem = RAMAnimatedTabBarItem(
            title: "Color",
            image: UIImage(named: "Settings"),
            selectedImage: UIImage(named: "Settings")
        )
        thirdTabBarItem.animation = RAMFumeAnimation()
        thirdTab.tabBarItem = thirdTabBarItem

        setViewControllers([firstTab, secondTab, thirdTab], animated: false)
    }
}
