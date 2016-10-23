//
//  AnimatedImageView
//
//
//  Created by Andrew Reed on 19/09/2016.
//  Copyright © 2016. All rights reserved.
//

import UIKit

class AnimatedImageView: UIImageView {
    let imagePrefix = "animation-"
    let numberOfImages = 40
    let duration = 3.5
    let repeatCount = 0

    override func awakeFromNib() {
        super.awakeFromNib()
        var animationImages = [UIImage]()
        for i in 0...numberOfImages {
            animationImages.append(UIImage(named: "\(imagePrefix)\(i)")!)
        }
        self.animationImages = animationImages
        self.animationDuration = duration
        self.animationRepeatCount = repeatCount
        self.startAnimating()
    }
}
