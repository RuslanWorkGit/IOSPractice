//
//  BaseUI.swift
//  Homework-6
//
//  Created by Ruslan Liulka on 18.10.2023.
//

import UIKit

class BaseUI: UIView {
    
    private var view: UIView!

       //init for storyboard
       required init?(coder aDecoder: NSCoder) {
           super.init(coder: aDecoder)
           commonInit()
       }

       //init for code
       override init(frame: CGRect) {
           super.init(frame: frame)
           commonInit()
       }

       func commonInit() {
           view = loadNib()
           addSubview(view)
           view.translatesAutoresizingMaskIntoConstraints = false
           view.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
           view.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
           view.topAnchor.constraint(equalTo: topAnchor).isActive = true
           view.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
       }

       func loadNib() -> UIView {
           let bundle = Bundle(for: type(of: self))

           guard let nibName = type(of: self).description().components(separatedBy: ".").last else {
               fatalError("NibName Not Found!")
           }

           let nib = UINib(nibName: nibName, bundle: bundle)

           guard let nibView = nib.instantiate(withOwner: self, options: nil).first as? UIView else {
               fatalError("First View Not Found!")
           }

           return nibView
       }
}



