//
//  ComercialTableViewCell.swift
//  Homework-7v3R
//
//  Created by Ruslan Liulka on 13.11.2023.
//

import UIKit

class ComercialTableViewCell: UITableViewCell {

    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var nickNameLabel: UILabel!
    @IBOutlet weak var countOfViewLabel: UILabel!
    @IBOutlet weak var decriptionLabel: UILabel!
    @IBOutlet weak var countOfComentLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var imagePostImageView: UIImageView!
    
    @IBOutlet weak var heartImage: UIImageView!
    var isHeartFilled = false
    @IBOutlet weak var savePostImage: UIImageView!
    var isSavePostFilled = false
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        setupImageView()
    }

    func configure(with post: Post) {
        avatarImageView.image = UIImage(named: post.avatarImageName)
        nickNameLabel.text = post.postImageName
        imagePostImageView.image = UIImage(named: post.postImageName)
        countOfViewLabel.text = String(post.viewCount) + " Views"
        decriptionLabel.text = post.description
        countOfComentLabel.text = "View all " + String(post.countOfComments) + " comments"
        timeLabel.text = post.postedAt
        
        avatarImageView.layer.cornerRadius = avatarImageView.bounds.width / 2
        
        // Reset the heart state when the cell is reused
        isHeartFilled = false
        updateHeartImage()
        
        isSavePostFilled = false
        updateSavePostImage()
    }
    
    private func setupImageView() {
        heartImage.isUserInteractionEnabled = true
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(heartImageTapped))
        heartImage.addGestureRecognizer(tapGesture)
        
        savePostImage.isUserInteractionEnabled = true
        let tapSaveGesture = UITapGestureRecognizer(target: self, action: #selector(savePostImageTapped))
        savePostImage.addGestureRecognizer(tapSaveGesture)
    }
    
    @objc private func heartImageTapped() {
        isHeartFilled.toggle()
        updateHeartImage()
    }
    
    @objc private func savePostImageTapped() {
        isSavePostFilled.toggle()
        updateSavePostImage()
    }
    
    private func updateHeartImage() {
        let imageName = isHeartFilled ? "heart.fill" : "heart"
        let newImage = UIImage(systemName: imageName)?.withTintColor(isHeartFilled ? .red : .label, renderingMode: .alwaysOriginal)
        
        UIView.transition(with: heartImage, duration: 0.3, options: .transitionCrossDissolve, animations: { self.heartImage.image = newImage},
        completion: nil)
    }
    
    private func updateSavePostImage() {
        let imageName = isSavePostFilled ? "bookmark.fill" : "bookmark"
        let newImage = UIImage(systemName: imageName)?.withTintColor(.black, renderingMode: .alwaysOriginal)
        
        UIView.transition(with: savePostImage, duration: 0.3,  options: .transitionCrossDissolve, animations: {self.savePostImage.image = newImage}, completion: nil)
    }
}
