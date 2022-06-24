//
//  UiImageView.swift
//  MvvmTraning
//
//  Created by mobin on 6/13/22.
//

import Foundation
import UIKit

extension UIImageView {

    func setRounded() {
         self.layer.cornerRadius = (self.frame.width / 2) //instead of let radius = CGRectGetWidth(self.frame) / 2
         self.layer.masksToBounds = true
     }
}
