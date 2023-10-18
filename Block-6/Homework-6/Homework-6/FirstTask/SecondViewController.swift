//
//  SecondViewController.swift
//  Homework-6
//
//  Created by Ruslan Liulka on 18.10.2023.
//

import UIKit

class SecondViewController: UIViewController {
    
    var orangeBall = UIView(frame: CGRect(x: UIScreen.main.bounds.minX + 40, y: UIScreen.main.bounds.minY + 40, width: 50, height: 50))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        orangeBall.backgroundColor = .systemOrange
        orangeBall.layer.cornerRadius = self.orangeBall.bounds.width / 2
        view.addSubview(orangeBall)
    }
    
    @IBAction func ballRun(_ sender: Any) {
        UIView.animateKeyframes(withDuration: 5.0, delay: 0) {
            UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.25) {
                self.orangeBall.center = CGPoint(x: UIScreen.main.bounds.maxX - 40, y: UIScreen.main.bounds.minY + 40)
            }
            
            UIView.addKeyframe(withRelativeStartTime: 0.25, relativeDuration: 0.5) {
                self.orangeBall.center = CGPoint(x: UIScreen.main.bounds.maxX - 40, y: UIScreen.main.bounds.maxY - 40)
            }
            
            UIView.addKeyframe(withRelativeStartTime: 0.75, relativeDuration: 0.25) {
                self.orangeBall.center = CGPoint(x: UIScreen.main.bounds.minX + 40, y: UIScreen.main.bounds.maxY - 40)
            }
            
            
            
        } completion: { (finished) in
            UIView.animateKeyframes(withDuration: 4.0, delay: 0) {
                UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.5) {
                    self.orangeBall.center = CGPoint(x: UIScreen.main.bounds.minX + 40, y: UIScreen.main.bounds.minY + 40)
                }
                
                UIView.addKeyframe(withRelativeStartTime: 0.8, relativeDuration: 0.25) {
                    self.orangeBall.alpha = 0
                }
            } completion: { (finished) in
               // self.orangeBall.isHidden = true
            }
        }
    }
}
