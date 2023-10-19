//
//  TopBar.swift
//  Homework-6
//
//  Created by Ruslan Liulka on 18.10.2023.
//

import Foundation
import UIKit

class TopBar: BaseUI {
    
    @IBOutlet var allView: UIView!
    @IBOutlet weak var leftView: UIView!
    @IBOutlet weak var rightView: UIView!
    
    
    
}


extension UIView {
    func roundSpecificCorners(corners: CACornerMask, radius: CGFloat) {
        self.layer.cornerRadius = radius
        self.layer.maskedCorners = corners
        self.clipsToBounds = true
    }
}
