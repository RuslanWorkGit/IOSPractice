////
////  ViewController.swift
////  TMDB-data
////
////  Created by Ruslan Liulka on 26.01.2024.
////
//
//import UIKit
//import Alamofire
//
//class ViewController: UIViewController {
//    
//    @IBOutlet weak var tableView: UITableView!
//    var arrayOfMovies: [Movie] = []
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        let request = AF.request("", method: .get)
//        
//        request.responseDecode(of: TMDBResponse.self) { responce in
//            do {
//                self.arraOfMovies = try responce.result.get().results
//                self.tableView.reloadData()
//            } catch {
//                
//            }
//        }
//    }
//}
//
//extension ViewController: UITableViewDataSource {
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        self.arrayOfMovies.count
//    }
//    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        
//        let cell = UITableViewCell()
//        
//        cell.textLabel?.text = arrayOfMovies[indexPath.row].originalTitle
//        
//        return cell
//    }
//    
//    
//}
