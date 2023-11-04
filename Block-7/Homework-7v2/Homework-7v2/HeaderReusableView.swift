//
//  HeaderReusableView.swift
//  Homework-7v2
//
//  Created by Ruslan Liulka on 04.11.2023.
//

import UIKit

class HeaderReusableView: UICollectionReusableView {
    let titleLable: UILabel = {
        let lable = UILabel()
        lable.layer.borderColor = UIColor.green.cgColor
        lable.layer.borderWidth = 2
        lable.layer.cornerRadius = 5
        lable.textColor = .black
        lable.textAlignment = .center
        lable.translatesAutoresizingMaskIntoConstraints = false
        lable.numberOfLines = 0
        
        lable.font = UIFont.systemFont(ofSize: 24)
        return lable
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupTitle()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupTitle() {
        addSubview(titleLable)
        NSLayoutConstraint.activate([
            titleLable.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8),
            titleLable.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8),
            titleLable.topAnchor.constraint(equalTo: topAnchor, constant: 8),
            titleLable.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8)
        ])
    }
}
