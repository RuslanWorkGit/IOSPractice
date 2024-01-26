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
        let array = ["1", "2", "4", "n", "t", "3"]
        let array2 = [["1", "2"], ["4", "n"], ["t"], ["3"]]
        let square = number.map {$0 * $0}
        print(square)
        
        let someValue = number.map { value in
            if value > 3 {
                return value * value
            } else {
                return 1
            }
            
        }
        print(someValue)
        
        let some = array2.flatMap { item in
            item
        }       
        print("Flat map: \(some)")
        
        let some2 = array.compactMap { Int($0) }
        print("Compact map: \(some2)" )
        
        //MARK: - filter
        let numbers = [1, 2, 9, 10, 7, 8, 4, 5, 6, 3]
        let result = numbers.filter { $0 < 5 }
        print(result)
        
        //MARK: - reduce
        let names = ["Alice", "Bob", "Chack"]
        let totalCount = names.reduce(0) { $0 + $1.count }
        print(totalCount)
        
        let totalString = names.reduce("") { partialResult, item in
            partialResult + item
        }
        print(totalString)
        
    }


}

