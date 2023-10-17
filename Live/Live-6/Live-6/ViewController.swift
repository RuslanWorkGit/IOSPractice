//
//  ViewController.swift
//  Live-6
//
//  Created by Ruslan Liulka on 16.10.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bottomViewBottomConstaint: NSLayoutConstraint!
    
    @IBOutlet weak var bottomView: UIView!
    @IBOutlet weak var topView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    @IBAction func pressemePressed(_ sender: Any) {
//        UIView.animate(withDuration: 5.0) { [weak self] in
//            guard let self else { return }
//
//        }
        
        UIView.animate(withDuration: 5.0) { [weak self] in
            guard let self else { return }
            
            self.topView.backgroundColor = .green
            self.topView.layer.cornerRadius = topView.bounds.height / 2
            self.topView.center = self.view.center
            self.topView.alpha = 0.3
            self.bottomViewBottomConstaint.constant = 250
            self.bottomView.backgroundColor = .red
            
            //CGAffineTransform
            self.topView.transform = CGAffineTransform(rotationAngle: .pi)
            self.topView.transform = CGAffineTransform(scaleX: 2, y: 2)
            self.view.bringSubviewToFront(topView)
            
            //After animation
            self.view.layoutIfNeeded()
        } completion: { completed in
            UIView.animate(withDuration: 5) { [weak self] in
                guard let self else { return }
                self.topView.backgroundColor = .yellow
                self.topView.center = CGPoint(x: 150, y: 150)
                self.topView.alpha = 1
                self.topView.transform = CGAffineTransform(scaleX: 0.5, y: 1)
                self.bottomViewBottomConstaint.constant = 16
                self.view.layoutIfNeeded()
            }
            
            //UIView.animateKeyframes(withDuration: , delay: , animations: )
        }
    }
    

    
}

