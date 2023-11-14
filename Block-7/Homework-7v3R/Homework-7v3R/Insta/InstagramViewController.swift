//
//  InstagramViewController.swift
//  Homework-7v3R
//
//  Created by Ruslan Liulka on 12.11.2023.
//

import UIKit

class InstagramViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var arrayOfPost: [Post] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        arrayOfPost.append(first)
        arrayOfPost.append(second)
        arrayOfPost.append(third)
        arrayOfPost.append(fourth)
        arrayOfPost.append(fifth)
        arrayOfPost.append(sixth)
        
        tableView.reloadData()
        
        let nib = UINib(nibName: "ComercialTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "ComercialTableViewCell")
        
        tableView.separatorStyle = .none
    }


}

extension InstagramViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        arrayOfPost.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ComercialTableViewCell") as? ComercialTableViewCell else {
            return UITableViewCell()
        }
        cell.configure(with: arrayOfPost[indexPath.row])
        cell.selectionStyle = .none
        return cell
    }
    
    
}
