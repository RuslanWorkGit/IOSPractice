//
//  SecondViewController.swift
//  Homework-8v2
//
//  Created by Ruslan Liulka on 03.12.2023.
//

import UIKit
import Alamofire

class SecondViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var arrayOfData: [MovieInfo]? = []
    
    let url = " https://api.themoviedb.org/3/trending/movie/week?api_key=bcfdb7391902da79ee3c28ea459c4d04"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib(nibName: "MovieTableViewCell", bundle: nil)
        self.tableView.register(nib, forCellReuseIdentifier: "MovieTableViewCell")

        AF.request(url).responseDecodable(of: Trend.self) { response in
            self.arrayOfData = response.value?.results
            self.tableView.reloadData()
        }
    
        
    }

}

extension SecondViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        arrayOfData?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieTableViewCell") as? MovieTableViewCell else {
            return UITableViewCell()
        }
        cell.configure(with: arrayOfData![indexPath.row])
        return cell
    }
}

extension SecondViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let movieInfo = arrayOfData?[indexPath.row] else { return }

        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let viewController = storyboard.instantiateViewController(withIdentifier: "MovieTapViewController") as? MovieTapViewController {
            viewController.movieInfo = movieInfo
            navigationController?.pushViewController(viewController, animated: true)
        }
        }
        
        
}
