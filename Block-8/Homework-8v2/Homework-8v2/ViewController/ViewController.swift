//
//  ViewController.swift
//  Homework-8v2
//
//  Created by Ruslan Liulka on 01.12.2023.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var arrayOfGenre: [Genre] = []
    let url = "https://api.themoviedb.org/3/genre/movie/list?api_key=bcfdb7391902da79ee3c28ea459c4d04"
    
    override func viewDidLoad() {
        super.viewDidLoad()
         
        AF.request(url).responseDecodable(of: MovieGenre.self) { listOfGenre in
            self.arrayOfGenre = listOfGenre.value?.genres ?? []
            self.tableView.reloadData()
            //print(listOfGenre.value?.genres[2].name)
         }
    }
    

}


extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        arrayOfGenre.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = arrayOfGenre[indexPath.row].name ?? "no data"
        return cell
    }
    
    
}
