//
//  FadeOutPopSegue.swift
//  Nutmeg
//
//  Created by Andrew Reed on 06/07/2016.
//  Copyright © 2016 Nutmeg. All rights reserved.
//

import UIKit

/// A nice animation to fade out a view controller.
class FadeOutPopSegue: UIStoryboardSegue {
    /// A key for the animation, ios uses for the reuse of animations
    private static let animationKey = "kCATransition"

    static let transitionFadeInOutDuration = 0.5

    /// Method called to perform the animation
    override func perform() {
        let transition: CATransition = CATransition()
        transition.type = kCATransitionFade
        transition.duration = FadeOutPopSegue.transitionFadeInOutDuration
        self.source.view.window?.layer.add(transition, forKey: FadeOutPopSegue.animationKey)
        _ = self.source.navigationController?.popViewController(animated: false)
    }
}
