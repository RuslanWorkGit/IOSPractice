//
//  ViewController.swift
//  Homework-7
//
//  Created by Ruslan Liulka on 24.10.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let arrayOfCity = ["Sumy", "Kyiv", "Poltava", "Lviv", "Dnipro", "Kharkiv", "Chernivci", "Ternopil"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        arrayOfCity.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = arrayOfCity[indexPath.row]
        return cell
    }
    
    
}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        viewController.cityName = arrayOfCity[indexPath.row]
        viewController.number = indexPath.row
        
       
        
        navigationController?.pushViewController(viewController, animated: true)
    }
}
