//
//  ViewController.swift
//  Homework-6
//
//  Created by Ruslan Liulka on 18.10.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topViewControl: TopBar!
    

    @IBOutlet weak var someView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
        topViewControl.leftView.roundSpecificCorners(corners: [.layerMinXMinYCorner, .layerMinXMaxYCorner], radius: topViewControl.bounds.height / 4)
        topViewControl.rightView.roundSpecificCorners(corners: [.layerMaxXMinYCorner, .layerMaxXMaxYCorner], radius: topViewControl.bounds.height / 4)
        
//        topViewControl.leftView.alpha = 0.5
//        topViewControl.rightView.alpha = 0.5
       
        
        someView.roundCorners([.topLeft, .bottomLeft], radius: 90)
    }


}


