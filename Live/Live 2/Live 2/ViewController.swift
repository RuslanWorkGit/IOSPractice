//
//  ViewController.swift
//  Live 2
//
//  Created by Ruslan Liulka on 20.09.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var centralLabel: UILabel!
    @IBOutlet weak var centralButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        centralLabel.textColor = .red
        centralLabel.backgroundColor = .yellow
        centralLabel.font = .italicSystemFont(ofSize: 30)
        centralLabel.text = "Now we have some text!"
        
        doIt()
        
        print("There!")
//        print("Hello world")
//        print("Hello world")
//        print("Hello world")
        
        
    }
    
    func doIt() {
        print("Hello!")
    }

    @IBAction func centralButtonPressed(_ sender: Any) {
        
        centralLabel.textColor = .blue
        centralLabel.backgroundColor = .yellow
        centralLabel.font = .italicSystemFont(ofSize: 25)
        centralLabel.text = "Hi there!"
    }
    
}

 
