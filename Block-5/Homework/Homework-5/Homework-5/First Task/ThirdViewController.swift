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
        
        let yellowPosition = CGRect(x: centerX, y: centerY, width: width, height: height)
        let yellowCircle = UIView(frame: yellowPosition)
        yellowCircle.backgroundColor = .systemYellow
        yellowCircle.layer.cornerRadius = width / 2
        yellowCircle.layer.masksToBounds = true
        yellowCircle.alpha = 0.5
        view.addSubview(yellowCircle)
        
        let redPosition = CGRect(x: centerX + 80, y: centerY - 150, width: width, height: height)
        let redCircle = UIView(frame: redPosition)
        redCircle.backgroundColor = .systemRed
        redCircle.layer.cornerRadius = width / 2
        redCircle.layer.masksToBounds = true
        view.addSubview(redCircle)
        
        let greenPosition = CGRect(x: centerX - 70, y: centerY + 150, width: width, height: height)
        let greenCircle = UIView(frame: greenPosition)
        greenCircle.backgroundColor = .systemGreen
        greenCircle.layer.cornerRadius = width / 2
        greenCircle.layer.masksToBounds = true
        view.addSubview(greenCircle)
        
        view.bringSubviewToFront(yellowCircle)
        
    }
    
}

