//
//  FirstViewController.swift
//  Homework-6
//
//  Created by Ruslan Liulka on 18.10.2023.
//

import UIKit

class FirstViewController: UIViewController {
    @IBOutlet weak var ball: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ball.layer.cornerRadius = ball.bounds.width / 2

        
    }
    

    @IBAction func ballBounce(_ sender: Any) {
        bounceBall()
    }
    
    func bounceBall() {

        
        UIView.animate(withDuration: 1.0, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 3, options: .curveEaseInOut) {
            self.ball.center.y += 250
        } completion: { finished in
            UIView.animate(withDuration: 1.0, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 3, options: .curveEaseInOut) {
                self.ball.center.y -= 250
            } completion: { finished in
                self.bounceBall()
            }
        }
    }
}
