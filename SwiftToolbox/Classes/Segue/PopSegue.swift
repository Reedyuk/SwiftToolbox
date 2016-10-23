//
//  PopSegue.swift
//
//
//  Created by Andrew Reed on 12/10/2016.
//  Copyright © 2016 . All rights reserved.
//

import UIKit
import CoreGraphics

/// A nice animation to pop in a view controller.
class PopSegue: UIStoryboardSegue {
    /// We need to know if the segue is animated.
    var animated: Bool = true

    static let transitionRevealInOutDuration = 0.3

    /// Method called to perform the animation
    override func perform() {
        // Assign the source and destination views to local variables.
        let firstVCView = self.source.view as UIView!
        let secondVCView = self.destination.view as UIView!

        // Get the screen width and height.
        let screenWidth = UIScreen.main.bounds.size.width
        let screenHeight = UIScreen.main.bounds.size.height

        secondVCView!.frame = CGRect(x: -screenWidth, y: 0.0, width: screenWidth, height: screenHeight)
        // Access the app's key window and insert the destination view above the current (source) one.
        UIApplication.shared.keyWindow?.insertSubview(secondVCView!, aboveSubview: firstVCView!)
        // Animate the transition.
        UIView.animate(withDuration: PopSegue.transitionRevealInOutDuration, delay: 0.0, options: .curveEaseInOut, animations: {
            firstVCView!.frame = firstVCView!.frame.offsetBy(dx: screenWidth, dy: 0.0)
            secondVCView!.frame = secondVCView!.frame.offsetBy(dx: screenWidth, dy: 0.0)
            }) { (success) in
                self.source.dismiss(animated: false, completion: nil)
        }
    }
}
