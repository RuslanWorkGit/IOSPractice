//
//  ThirdViewController.swift
//  Homework-5
//
//  Created by Ruslan Liulka on 13.10.2023.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let width: CGFloat = 250
        let height: CGFloat = 250
        
        let centerX = (UIScreen.main.bounds.width - width) / 2
        let centerY = (UIScreen.main.bounds.height - height) / 2
        
        let yellowCircle = createCircle(posX: centerX, posY: centerY, width: width, height: height, color: .systemYellow)
        yellowCircle.alpha = 0.5
        view.addSubview(yellowCircle)
        
        let redCircle = createCircle(posX: centerX + 80, posY: centerY - 150, width: width, height: height, color: .systemRed)
        view.addSubview(redCircle)
        
        let greenCircle = createCircle(posX: centerX - 70, posY: centerY + 150, width: width, height: height, color: .systemGreen)
        view.addSubview(greenCircle)
        
        view.bringSubviewToFront(yellowCircle)
        
    }
    
}

func createCircle(posX: CGFloat, posY: CGFloat, width: CGFloat, height: CGFloat, color: UIColor?) -> UIView {
    let circlePosition = CGRect(x: posX, y: posY, width: width, height: height)
    let circle = UIView(frame: circlePosition)
    circle.backgroundColor = color
    circle.layer.cornerRadius = width / 2
    circle.layer.masksToBounds = true
    
    return circle
}
