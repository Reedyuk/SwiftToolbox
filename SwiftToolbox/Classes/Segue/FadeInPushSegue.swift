//
//  FadeInPushSegue.swift
//
//
//  Created by Andrew Reed on 06/07/2016.
//  Copyright © 2016. All rights reserved.
//

import UIKit

/// A nice animation to fade in a view controller.
class FadeInPushSegue: UIStoryboardSegue {
    /// We need to know if the segue is animated.
    var animated: Bool = true

    /// A key for the animation, ios uses for the reuse of animations
    private static let animationKey = "kCATransition"

    static let transitionFadeInOutDuration = 0.5

    /// Method called to perform the animation
    override func perform() {
        let transition: CATransition = CATransition()
        transition.type = kCATransitionFade
        transition.duration = FadeInPushSegue.transitionFadeInOutDuration
        self.source.view.window?.layer.add(transition, forKey: FadeInPushSegue.animationKey)
        self.source.navigationController?.pushViewController(self.destination, animated: false)
    }
}
