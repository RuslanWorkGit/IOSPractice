//
//  MovieTapViewController.swift
//  Homework-8v2
//
//  Created by Ruslan Liulka on 04.12.2023.
//

import UIKit

class MovieTapViewController: UIViewController {
    var movieInfo: MovieInfo?
    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var movieIdLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var originalTitleLable: UILabel!
    @IBOutlet weak var originalLanguageLabel: UILabel!
    @IBOutlet weak var adultLabel: UILabel!
    @IBOutlet weak var mediaTypeLabel: UILabel!
    @IBOutlet weak var genreLabel: UILabel!
    @IBOutlet weak var releaseDataLabel: UILabel!
    @IBOutlet weak var popularityLabel: UILabel!
    @IBOutlet weak var voteCountLabel: UILabel!
    @IBOutlet weak var voteAverageLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var firstImage: UIImageView!
    @IBOutlet weak var secondImage: UIImageView!
    func downloadImage(from url: URL, variableName: UIImageView) {
        URLSession.shared.dataTask(with: url) { [weak self] data, response, error in
            guard let self = self else { return }

            if let error = error {
                // Handle the error (e.g., show an alert)
                print("Error downloading image: \(error)")
                return
            }

            DispatchQueue.main.async {
                if let data = data, let image = UIImage(data: data) {
                    variableName.image = image
                } else {
                    // Handle the scenario where image data couldn't be converted to a UIImage
                    // Perhaps set a default image
                }
            }
        }.resume()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let basePath = "https://image.tmdb.org/t/p/w500"
        guard let posterPath = movieInfo?.posterPath else { return }
        let url = URL(string: basePath + posterPath)
        if let url = url {
            downloadImage(from: url, variableName: posterImageView)
        }
        movieIdLabel.text = "Movie id: " + String(describing: movieInfo?.id ?? 0)
        titleLabel.text = movieInfo?.title ?? "NO DATA"
        originalTitleLable.text = movieInfo?.originalTitle ?? "NO DATA"
        originalLanguageLabel.text = "Original Language is " + (movieInfo?.originalLanguage.rawValue ?? "NO DATA")
        adultLabel.text = "Adult: " + (movieInfo?.adult ?? false ? "18+ Film" : "Child friendly")
        mediaTypeLabel.text = "Media type: " + (movieInfo?.mediaType.rawValue ?? "NO DATA")
        //genreLabel.text = "Genres: " + (String(movieInfo?.genreIDS ?? 0))
        releaseDataLabel.text = "Release data: " + (movieInfo?.releaseDate ?? "NO DATA")
        popularityLabel.text = "Popularity " + String(movieInfo?.popularity ?? 0.0)
        voteCountLabel.text = "Vote count: " + String(movieInfo?.voteCount ?? 0)
        voteAverageLabel.text = "Vote average: " + String(movieInfo?.voteAverage ?? 0)
        descriptionLabel.text = movieInfo?.overview ?? "NO DATA"
        
        guard let firstPoster = movieInfo?.backdropPath else { return }
        let url1 = URL(string: basePath + firstPoster)
        if let url1 = url1 {
            downloadImage(from: url1, variableName: firstImage)
        }
        
        guard let secondPoster = movieInfo?.posterPath else { return }
        let url2 = URL(string: basePath + secondPoster)
        if let url2 = url2 {
            downloadImage(from: url2, variableName: secondImage)
        }
        
    }

}
