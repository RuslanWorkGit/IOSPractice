//
//  LottieTestViewController.swift
//  Live-6
//
//  Created by Ruslan Liulka on 16.10.2023.
//

import UIKit
import Lottie

class LottieTestViewController: UIViewController, MainNavigationBarDelegate {
    
    
    @IBOutlet weak var navigationCutomView: MainNavigationBar!
    
    @IBOutlet weak var animationView: LottieAnimationView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        animationView.loopMode = .loop
//        animationView.animationSpeed = 1.5
//        animationView.play()
        
        navigationCutomView.delegate = self
    }
    func navigationBarButtonPressed() {
        print("Button Pressed")
    }
    
    @IBAction func actionButton(_ sender: Any) {
        //animationView.loopMode = .loop
        animationView.animationSpeed = 1.5
        animationView.play()
    }
}

