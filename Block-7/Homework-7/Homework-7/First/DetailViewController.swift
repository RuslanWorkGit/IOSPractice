//
//  DetailViewController.swift
//  Homework-7
//
//  Created by Ruslan Liulka on 26.10.2023.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var topLable: UILabel!
    @IBOutlet weak var bottomLable: UILabel!
    
    var number: Int = 0
    var cityName: String = "no name"
    override func viewDidLoad() {
        super.viewDidLoad()

        
        topLable.text = cityName
        bottomLable.text = String(number)
    }
    


}
