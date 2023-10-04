//
//  SecondViewController.swift
//  live-3
//
//  Created by Ruslan Liulka on 04.10.2023.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let arrayOfItems: [Attackable] = [Soldier(), Tank(), Ship()]
        let arrayOfItems1: [Any] = [Soldier(), Tank(), Ship()]
        
        for item in arrayOfItems {
            item.attack()
        }
        
        //wrong use
        for item in arrayOfItems1 {
            if let tank = item as? Tank {
                tank.attack()
            }
            if let soldier = item as? Soldier {
                soldier.attack()
            }
            if let ship = item as? Ship {
                ship.attack()
            }
        }
    }

}

class Army {
    func attack() { }
}

class Item {
  
}

protocol Attackable {
    func attack()
}

class Soldier: Attackable {
    func attack() {
        print("Soldier - attack")
    }
}

class Tank: Attackable {
    func attack() {
        print("Tank - attack")
    }
}

class Ship: Attackable {
    func attack() {
        print("Ship - attack")
    }
}
