//
//  SecondViewController.swift
//  Homework-5
//
//  Created by Ruslan Liulka on 13.10.2023.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let width: CGFloat = 250
        let height: CGFloat = 250
        
        let centralX = (UIScreen.main.bounds.width - width) / 2
        let centralY = (UIScreen.main.bounds.height - height) / 2
        
        let yellowCirclePosition = CGRect(x: centralX, y: centralY, width: width, height: height)
        let yellowCircle = UIView(frame: yellowCirclePosition)
        yellowCircle.backgroundColor = .systemYellow
        yellowCircle.layer.cornerRadius = width / 2
        yellowCircle.layer.masksToBounds = true
        view.addSubview(yellowCircle)
        
        //let redCircleY = (UIScreen.main.bounds.height - height) / 4
        //let redCirclePosition = CGRect(x: centralX, y: redCircleY, width: width, height: height)
        
        let redCircle = UIView()
        redCircle.translatesAutoresizingMaskIntoConstraints = false
        redCircle.backgroundColor = .systemRed
        redCircle.layer.cornerRadius = width / 2
        redCircle.layer.masksToBounds = true
        view.addSubview(redCircle)
        
        NSLayoutConstraint.activate([
            redCircle.leadingAnchor.constraint(equalTo: yellowCircle.leadingAnchor),
            redCircle.trailingAnchor.constraint(equalTo: yellowCircle.trailingAnchor),
            redCircle.bottomAnchor.constraint(equalTo: yellowCircle.topAnchor),
            redCircle.heightAnchor.constraint(equalToConstant: height)
        ])

        let greenCircle = UIView()
        greenCircle.translatesAutoresizingMaskIntoConstraints = false
        greenCircle.backgroundColor = .systemGreen
        greenCircle.layer.cornerRadius = width / 2
        
        view.addSubview(greenCircle)
        
        NSLayoutConstraint.activate([
            greenCircle.leadingAnchor.constraint(equalTo: yellowCircle.leadingAnchor),
            greenCircle.trailingAnchor.constraint(equalTo: yellowCircle.trailingAnchor),
            greenCircle.topAnchor.constraint(equalTo: yellowCircle.bottomAnchor),
            greenCircle.heightAnchor.constraint(equalToConstant: height)
        ])
    }

}
