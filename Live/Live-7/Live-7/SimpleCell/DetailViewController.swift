//
//  DetailViewController.swift
//  Live-7
//
//  Created by Ruslan Liulka on 21.10.2023.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var centralLable: UILabel!
    var name: String = "No name"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        centralLable.text = name 
        
    }

}
