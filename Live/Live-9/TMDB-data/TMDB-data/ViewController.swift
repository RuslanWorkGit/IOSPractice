

import UIKit
import Alamofire
import RealmSwift

class ViewController: UIViewController {
    
    let link = "https://api.themoviedb.org/3/trending/movie/week?language=en-US&api_key=bcfdb7391902da79ee3c28ea459c4d04"
    let page = "&page="
    let numberOfPage = "1"
    
    
    
    @IBOutlet weak var tableView: UITableView!
    var arrayOfMovies: [Movie] = []
    
    private let realm = try! Realm()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let combineUrl = link + page + numberOfPage
        
        let request = AF.request(combineUrl, method: .get)
        
        request.responseDecodable(of: TMDBResponse.self) { responce in
            do {
                self.arrayOfMovies = try responce.result.get().results
                self.tableView.reloadData()
            } catch {
                
            }
        }
    }
    
    private func saveMovie(media: Movie?) {
        
        var movieRealm = MovieRealm()
        movieRealm.id = media?.id ?? 0
        movieRealm.adult = media?.adult ?? false
        movieRealm.backdropPath = media?.backdropPath ?? ""
        movieRealm.title = media?.title ?? ""
        movieRealm.mediaType = media?.mediaType.rawValue ?? ""
        movieRealm.popularity = media?.popularity ?? 0
        movieRealm.releaseDate = media?.releaseDate ?? ""
        movieRealm.video = media?.video ?? false
        movieRealm.voteAverage = media?.voteAverage ?? 0
        movieRealm.voteCount = media?.voteCount ?? 0
        
        try? realm.write({
            realm.add(movieRealm, update: .all)
        })
    }

}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.arrayOfMovies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        
        cell.textLabel?.text = arrayOfMovies[indexPath.row].originalTitle
        
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //
    }
    
    func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let saveAction = UIContextualAction(style: .normal, title: "Save movie") {[weak self] _, _, completion in
            self?.saveMovie(media: self?.arrayOfMovies[indexPath.row])
            completion(true)
        }
        
        saveAction.backgroundColor = .green
        return UISwipeActionsConfiguration(actions: [saveAction])
    }
}
