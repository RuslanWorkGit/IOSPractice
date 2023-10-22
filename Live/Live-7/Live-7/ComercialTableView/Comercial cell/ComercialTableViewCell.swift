//
//  ComercialTableViewCell.swift
//  Live-7
//
//  Created by Ruslan Liulka on 22.10.2023.
//

import UIKit

class ComercialTableViewCell: UITableViewCell {
    @IBOutlet weak var avatarImageView: UIImageView!
    
    @IBOutlet weak var nameLable: UILabel!
    @IBOutlet weak var secondLable: UILabel!
    @IBOutlet weak var thirdLable: UILabel!
    @IBOutlet weak var decriptionTextLable: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    func configure(with person: Person) {
        
        avatarImageView.downloaded(from: person.avatarImage)
        avatarImageView.layer.cornerRadius = avatarImageView.bounds.width / 2
        nameLable.text = person.firstName
        secondLable.text = person.job.company
        thirdLable.text = person.location.city
        decriptionTextLable.text = person.differentSizeDescription
    }
    
}
