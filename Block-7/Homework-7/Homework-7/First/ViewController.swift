//
//  ViewController.swift
//  Homework-7
//
//  Created by Ruslan Liulka on 24.10.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var cityTextField: UITextField!
    
    var arrayOfCity = ["Sumy", "Kyiv", "Poltava", "Lviv", "Dnipro", "Kharkiv", "Chernivci", "Ternopil"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cityTextField.delegate = self
    }
}


