

import UIKit
import RealmSwift

class FavoriteViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var savedMovieArray: [MovieRealm] = []
    
    private let realm = try! Realm()
    
    override func viewDidLoad() {
        super.viewDidLoad()


        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        //відкривається коли відкривається сторінка
        
        self.savedMovieArray = getMovies()
        self.tableView.reloadData()
    }
    
    private func getMovies() -> [MovieRealm] {
        let results = realm.objects(MovieRealm.self)
        return Array(results)
    }

}

extension FavoriteViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.savedMovieArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        
        cell.textLabel?.text = savedMovieArray[indexPath.row].title
        
        return cell
    }
}

//extension FavoriteViewController: UITableViewDelegate {
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        //
//    }
//    
//    func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
//        
//        let saveAction = UIContextualAction(style: .normal, title: "Save movie") {[weak self] _, _, completion in
//            self?.saveMovie(media: self?.savedMovieArray[indexPath.row])
//            completion(true)
//        }
//        
//        saveAction.backgroundColor = .green
//        return UISwipeActionsConfiguration(actions: [saveAction])
//    }
//}
