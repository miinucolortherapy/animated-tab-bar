//  RAMBadge.swift
//
// Copyright (c) 17/12/15 Ramotion Inc. (http://ramotion.com)
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE

import UIKit

open class RAMBadge: UILabel {

    internal var topConstraint: NSLayoutConstraint?
    internal var centerXConstraint: NSLayoutConstraint?

    open class func badge() -> RAMBadge {
        return RAMBadge(frame: CGRect(x: 0, y: 0, width: 14.0, height: 14.0))
    }

    public override init(frame: CGRect) {
        super.init(frame: frame)

        layer.backgroundColor = UIColor.red.cgColor
        layer.cornerRadius = frame.size.width / 2

        configureNumberLabel()
    }

    open override var intrinsicContentSize: CGSize {
        var contentSize = super.intrinsicContentSize
        contentSize.width += 10.0
        return contentSize
    }

    public required init?(coder _: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    fileprivate func configureNumberLabel() {
        textAlignment = .center
        font = .systemFont(ofSize: 12.0)
        textColor = .white
    }

    // PRAGMA: public

    open func addBadgeOnView(_ onView: UIView) {
        self.frame = CGRect(
            x: onView.bounds.width - self.intrinsicContentSize.width / 3.0,
            y: -self.frame.height / 3.0,
            width: self.intrinsicContentSize.width,
            height: self.intrinsicContentSize.height
        )
        onView.addSubview(self)
    }
}
