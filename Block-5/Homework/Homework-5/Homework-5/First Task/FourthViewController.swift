//
//  FourthViewController.swift
//  Homework-5
//
//  Created by Ruslan Liulka on 13.10.2023.
//

import UIKit

class FourthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let smallWidth: CGFloat = 260
        let smallHeight: CGFloat = 260

        let width = UIScreen.main.bounds.width
        let height = width
        
        let centerX = (UIScreen.main.bounds.width - width) / 2
        let centerY = (UIScreen.main.bounds.height - height) / 2
        
        let mainCicle = createCircle(posX: centerX, posY: centerY, width: width, height: height, color: .white)
        //mainCicle.alpha = 0
        view.addSubview(mainCicle)
        
        let redCircle = createCircle(posX: -20, posY: -50, width: smallWidth, height: smallWidth, color: .red)
        mainCicle.addSubview(redCircle)
        
        let yellowCircle = createCircle(posX: 180, posY: -50, width: smallWidth, height: smallHeight, color: .systemYellow)
        mainCicle.addSubview(yellowCircle)
        
        let greenCircle = createCircle(posX: 180, posY: 170, width: smallWidth, height: smallHeight, color: .systemGreen)
        mainCicle.addSubview(greenCircle)
        
        let blueCircle = createCircle(posX: -20, posY: 170, width: smallWidth, height: smallHeight, color: .systemBlue)
        mainCicle.addSubview(blueCircle)
    }
    

}

