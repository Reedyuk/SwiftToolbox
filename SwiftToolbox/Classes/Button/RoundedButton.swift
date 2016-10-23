//
//  RoundedButton.swift
//
//  Created by Andrew Reed on 21/06/2016.
//  Copyright © 2016 All rights reserved.
//

import UIKit
import Foundation

// UIButton with rounded corners to be used throughout Nutmeg application
class NutmegRoundedButton: UIButton {

    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        self.layer.cornerRadius = 3.0
    }

}
