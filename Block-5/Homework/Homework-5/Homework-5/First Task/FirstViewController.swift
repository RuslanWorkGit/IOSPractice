//
//  FirstViewController.swift
//  Homework-5
//
//  Created by Ruslan Liulka on 13.10.2023.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let width: CGFloat = 250
        let height: CGFloat = 250
        
        let centralX = (UIScreen.main.bounds.width - width) / 2
        let centralY = (UIScreen.main.bounds.height - height) / 2

        let greenCircle = UIView(frame: CGRect(x: centralX, y: centralY, width: width, height: height))
//        greenCircle.layer.cornerRadius = greenCircle.frame.width / 2
        greenCircle.layer.cornerRadius = width / 2
        greenCircle.backgroundColor = .systemGreen
        greenCircle.layer.masksToBounds = true
        view.addSubview(greenCircle)
    }

}
