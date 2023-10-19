//
//  MenuBlock.swift
//  Homework-6
//
//  Created by Ruslan Liulka on 19.10.2023.
//

import UIKit

protocol MenuBlockDelegate{
    func menuButtonPresed(from menuBlock: MenuBlock)
}

class MenuBlock: BaseUI {
     
    var delegate: MenuBlockDelegate?
    
    @IBOutlet var allView: UIView!
    @IBOutlet weak var textLable: UILabel!
    @IBOutlet weak var backgroundImageColor: UIView!
    @IBOutlet weak var image: UIImageView!
    
    func configure(with text: String, image: UIImage?, color: UIColor) {
        self.backgroundImageColor.layer.cornerRadius = backgroundImageColor.bounds.width / 2
        self.allView.layer.cornerRadius = 20
        self.image.image = image
        self.textLable.text = text
        self.backgroundImageColor.backgroundColor = color
    }
    
    @IBAction func menuBlockPressed(_ sender: Any) {
        delegate?.menuButtonPresed(from: self)
    }
}
