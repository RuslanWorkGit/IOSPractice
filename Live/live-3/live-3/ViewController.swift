//
//  ViewController.swift
//  live-3
//
//  Created by Ruslan Liulka on 02.10.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myCoala = Coala(name: "Coala")
        let myFox = Fox() 
        let myBird = Eagle()
        myBird.name = "His name"
        
        starWorld(units: [myCoala, myFox])
        
        
        
        
        let myButton = UIButton()
        myButton.setTitle("Hello my dear", for: .normal)
        
    }
    
    func starWorld(units: [Animal]) {
        
        for unit in units {
            unit.startDay()
        }
    }
    
//    func starWorld(units: [Coala]) {
//        
//        for unit in units {
//            unit.startDay()
//        }
//    }
}

class Animal {
    func startDay() { }
}

class Food {
    
}

class Fox: Animal {
    
}

class Chicken: Animal {
    
}

class Coala: Animal {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func eat(item: Food) {
        print("I can busy")
         
        chop()
        startEataing()
    }
    
    public func chop() {
        
    }
    
    private func startEataing() {
        
    }
}

