//
//  DetailViewController.swift
//  Homework-7v3R
//
//  Created by Ruslan Liulka on 09.11.2023.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var cityLable: UILabel!

    @IBOutlet weak var indexLabel: UILabel!
    @IBOutlet weak var areaLabel: UILabel!
    
    var cityName: String = "No name"
    var cityArea: String = "0"
    var cityIndex: String = "None"
    override func viewDidLoad() {
        super.viewDidLoad()

        cityLable.text = cityName
        areaLabel.text = cityArea
        indexLabel.text = cityIndex
        
    }
    


}
