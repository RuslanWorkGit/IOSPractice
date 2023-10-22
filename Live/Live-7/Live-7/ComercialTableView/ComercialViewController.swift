//
//  ComercialViewController.swift
//  Live-7
//
//  Created by Ruslan Liulka on 22.10.2023.
//

import UIKit

class ComercialViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var arrayOfPeople: [Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //заповнювання данними
        arrayOfPeople = DataManager().getListOfPersons()
        //update table
        tableView.reloadData()
        
        //registration of cell
        let nib = UINib(nibName: "ComercialTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "ComercialTableViewCell")

        
    }

}

extension ComercialViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        arrayOfPeople.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ComercialTableViewCell") as! ComercialTableViewCell
        cell.configure(with: arrayOfPeople[indexPath.row])
        return cell
    }
    
    
}
