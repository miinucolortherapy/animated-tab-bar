//
//  BadgeDot.swift
//  RAMAnimatedTabBarDemo
//
//  Created by Vladislav Kondrashkov on 10/8/19.
//  Copyright © 2019 Ramotion. All rights reserved.
//

import UIKit

final class BadgeDot: UIView {
    init(size: CGFloat) {
        super.init(frame: CGRect(x: 0.0, y: 0.0, width: size, height: size))
        self.backgroundColor = .red
        self.layer.cornerRadius = self.frame.height / 2.0
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func addBadgeOn(view: UIView) {
        self.frame = CGRect(
            x: view.bounds.width - self.frame.width + 1.0,
            y: -1.0,
            width: self.frame.width,
            height: self.frame.height
        )
        view.addSubview(self)
    }
}
