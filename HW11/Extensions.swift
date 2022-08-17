//
//  Extensions.swift
//  HW11
//
//  Created by Виктор Басиев on 17.08.2022.
//

import UIKit

//MARK: - Extension StackView
extension UIStackView {
    convenience init(arrangedSubviews: [UIView], axis: NSLayoutConstraint.Axis, spasing: CGFloat, distribution: UIStackView.Distribution) {
        self.init(arrangedSubviews: arrangedSubviews)
        self.axis = axis
        self.spacing = spasing
        self.distribution = distribution
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}

//MARK: - Extension TextFiel
extension UITextField {
    func setLeftIcon(_ image: UIImage) {
        let iconView = UIImageView(frame: CGRect(x: 10, y: 5, width: 20, height: 20))
        iconView.image = image
        let iconContainerView: UIView = UIView(frame: CGRect(x: 20, y: 0, width: 30, height: 30))
        iconContainerView.addSubview(iconView)
        leftView = iconContainerView
        leftViewMode = .always
    }
}
