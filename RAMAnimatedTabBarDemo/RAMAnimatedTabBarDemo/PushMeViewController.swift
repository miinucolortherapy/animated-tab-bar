//
//  PushMeViewController.swift
//  RAMAnimatedTabBarDemo
//
//  Created by Vladislav Kondrashkov on 10/8/19.
//  Copyright © 2019 Ramotion. All rights reserved.
//

import UIKit

final class PushMeViewController: UIViewController {
    private let pressMe = UIButton(type: .system)

    override func loadView() {
        view = UIView()

        view.addSubview(pressMe)
        pressMe.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            pressMe.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            pressMe.centerYAnchor.constraint(equalTo: view.centerYAnchor)
            ])
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        pressMe.setTitle("Press me", for: .normal)
        pressMe.addTarget(self, action: #selector(pressMeDidPress), for: .touchUpInside)
    }

    @objc private func pressMeDidPress() {
        let pushMe = PushMeViewController()
        let colors: [UIColor] = [
            .blue, .brown, .cyan, .darkGray, .green, .lightGray, .magenta, .purple
        ]
        pushMe.hidesBottomBarWhenPushed = true
        pushMe.view.backgroundColor = colors[Int.random(in: 0..<colors.count)]
        navigationController?.pushViewController(pushMe, animated: true)
    }
}
