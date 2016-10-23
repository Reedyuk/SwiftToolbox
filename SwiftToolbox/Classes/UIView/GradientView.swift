//
//  GradientView.swift
//
//
//  Created by Andrew Reed on 13/07/2016.
//  Copyright © 2016. All rights reserved.
//

import UIKit
import ChameleonFramework

/// An awesome little view that is a 3 point gradient |1-2-3|
/// Requires the Chameleon framework
class GradientView: UIView {

    @IBInspectable var gradientDirection = UIGradientStyle.leftToRight
    @IBInspectable var startGradient = UIColor(white: CGFloat(1.0), alpha: CGFloat(0))
    @IBInspectable var midGradient = UIColor(white: CGFloat(1.0), alpha: CGFloat(0.30))
    @IBInspectable var endGradient = UIColor(white: CGFloat(1.0), alpha: CGFloat(0))

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupGradient()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.setupGradient()
    }

    /// Method used to setup the gradient with the colours and gradient direction.
    func setupGradient() {
        self.backgroundColor = UIColor(gradientStyle: gradientDirection, withFrame: self.bounds, andColors: [startGradient, midGradient, endGradient])
    }
}

/// The horizontal version
@IBDesignable class GradientHorizontalView: GradientView {
    /// Method used to setup the gradient with the colours and gradient direction.
    override func setupGradient() {
        self.gradientDirection = .leftToRight
        super.setupGradient()
    }
}

/// The vertical version
@IBDesignable class GradientVerticalView: GradientView {
    /// Method used to setup the gradient with the colours and gradient direction.
    override func setupGradient() {
        self.gradientDirection = .topToBottom
        super.setupGradient()
    }
}
