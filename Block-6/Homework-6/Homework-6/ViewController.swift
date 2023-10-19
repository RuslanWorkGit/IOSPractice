//
//  ViewController.swift
//  Homework-6
//
//  Created by Ruslan Liulka on 18.10.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var instalments: MenuBlock!
    @IBOutlet weak var topViewControl: TopBar!
    
    @IBOutlet weak var partBuy: MenuBlock!
    
    @IBOutlet weak var archive: MenuBlock!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
        topViewControl.leftView.roundSpecificCorners(corners: [.layerMinXMinYCorner, .layerMinXMaxYCorner], radius: topViewControl.bounds.height / 4)
        topViewControl.rightView.roundSpecificCorners(corners: [.layerMaxXMinYCorner, .layerMaxXMaxYCorner], radius: topViewControl.bounds.height / 4)

        partBuy.configure(with: "Покупка частями", image: UIImage(named: "pawprint"), color: .systemPink)
        
        archive.configure(with: "Архів", image: UIImage(systemName: "checkmark.rectangle.portrait"), color: .lightGray)
        archive.image.tintColor = .white
        
        instalments.configure(with: "Розстрочка на карту", image: UIImage(named: "analytics"), color: .systemGreen)
        
        
     
    }
}


