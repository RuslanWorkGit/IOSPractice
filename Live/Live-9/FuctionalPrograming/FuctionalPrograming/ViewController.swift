//
//  ViewController.swift
//  FuctionalPrograming
//
//  Created by Ruslan Liulka on 19.01.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
        //MARK: - map
        let number = [1, 2, 3, 4, 5]
        let square = number.map {$0 * $0}
        print(square)
        
        let someValue = number.map { value in
            if value > 3 {
                return value * value
            } else {
                return 1
            }
//            return value * value
        }
        print(someValue)
        
        //MARK: - filter
        let numbers = [1, 2, 9, 10, 7, 8, 4, 5, 6, 3]
        let result = numbers.filter { $0 < 5 }
        print(result)
        
        //MARK: - reduce
        let names = ["Alice", "Bob", "Chack"]
        let totalCount = names.reduce(0) { $0 + $1.count }
        print(totalCount)
        
    }


}

