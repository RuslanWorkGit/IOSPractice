//
//  FakeDataViewController.swift
//  Homework-8v2
//
//  Created by Ruslan Liulka on 08.12.2023.
//

import UIKit
import Alamofire

class FakeDataViewController: UIViewController {
    
    var userID: Int = 0
    var id: Int = 0
    var titleText: String = ""
    var bodyText: String = ""
    

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = "https://jsonplaceholder.typicode.com/posts"
        AF.request(url).validate().responseDecodable(of: FakeData.self) { response in
            self.userID = response.value?.userID ?? 0
            self.id = response.value?.id ?? 0
            self.titleText = response.value?.title ?? "No data"
            self.bodyText = response.value?.body ?? "No data"
            
            let nib = UINib(nibName: "FakeTableViewCell", bundle: nil)
            self.tableView.register(nib, forCellReuseIdentifier: "FakeTableViewCell")
            self.tableView.reloadData()
        }
        
    }

}

extension FakeDataViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    
}
