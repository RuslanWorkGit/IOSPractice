//
//  SecondViewController.swift
//  Homework-7
//
//  Created by Ruslan Liulka on 27.10.2023.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var arrayOfPost: [Post] = []
    override func viewDidLoad() {
        super.viewDidLoad()

            }

}

extension SecondViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        arrayOfPost.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    
}
