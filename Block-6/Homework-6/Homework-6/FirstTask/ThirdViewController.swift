//
//  ThirdViewController.swift
//  Homework-6
//
//  Created by Ruslan Liulka on 18.10.2023.
//

import UIKit
import Lottie

class ThirdViewController: UIViewController {
    
    @IBOutlet weak var topLottieView: LottieAnimationView!
    
    @IBOutlet weak var bottomLottieView: LottieAnimationView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
  
        bottomLottieView.loopMode = .loop
        bottomLottieView.contentMode = .scaleAspectFit
        bottomLottieView.animationSpeed = 1.5
        
        topLottieView.loopMode = .loop
        topLottieView.animationSpeed = 1.0
    }
    
    @IBAction func startAction(_ sender: Any) {
        bottomLottieView.play()
        topLottieView.play()
    }
}
