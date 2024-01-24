////
////  FakeDataViewController.swift
////  Homework-8v2
////
////  Created by Ruslan Liulka on 08.12.2023.
////
//
//import UIKit
//import Alamofire
//
//class FakeDataViewController: UIViewController {
//    
//    var userId: [Int] = []
//    var id: Int = 0
//    var titleText: String = ""
//    var bodyText: String = ""
//    
//    var tuplesOfData: [(Int, Int, String, String)] = []
//
//    @IBOutlet weak var tableView: UITableView!
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        let url = "https://jsonplaceholder.typicode.com/posts"
//        AF.request(url).validate().responseDecodable(of: FakeData.self) { response in
//            
//            self.tuplesOfData.append((response.value?.userID ?? 1, response.value?.id ?? 1, response.value?.title ?? "No data", response.value?.body ?? "No data"))
////            self.userId.append(response.value?.userID ?? 0)
////            self.id = response.value?.id ?? 0
////            self.titleText = response.value?.title ?? "No data"
////            self.bodyText = response.value?.body ?? "No data"
//            
//            let nib = UINib(nibName: "FakeTableViewCell", bundle: nil)
//            self.tableView.register(nib, forCellReuseIdentifier: "FakeTableViewCell")
//            self.tableView.reloadData()
//        }
//        
//    }
//
//}
//
//extension FakeDataViewController: UITableViewDataSource {
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        tuplesOfData.count
//    }
//    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        guard let cell = tableView.dequeueReusableCell(withIdentifier: "FakeTableViewCell") as? FakeTableViewCell else {
//            return UITableViewCell()
//        }
//        cell.configur(some: tuplesOfData[indexPath.row])
//        return cell
//    }
//    
//    
//}
// 
