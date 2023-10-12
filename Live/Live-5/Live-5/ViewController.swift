//
//  ViewController.swift
//  Live-5
//
//  Created by Ruslan Liulka on 11.10.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let rect = CGRect(x: 50, y: 100, width: 200, height: 100)
        let topButton = UIButton(frame: rect)
        topButton.setTitle("Press me!", for: .normal)
        topButton.setTitleColor(.blue, for: .normal)
        topButton.backgroundColor = .yellow
        view.addSubview(topButton)
        
        let rect1 = CGRect(x: 70, y: 150, width: 200, height: 100)
        let topButton1 = UIButton(frame: rect1)
        topButton1.setTitle("Press me!", for: .normal)
        topButton1.setTitleColor(.red, for: .normal)
        topButton1.backgroundColor = .green
        view.addSubview(topButton1)
        
        view.bringSubviewToFront(topButton)
        
    }


}

