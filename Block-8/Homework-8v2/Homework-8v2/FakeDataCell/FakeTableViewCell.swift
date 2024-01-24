////
////  FakeTableViewCell.swift
////  Homework-8v2
////
////  Created by Ruslan Liulka on 08.12.2023.
////
//
//import UIKit
//
//class FakeTableViewCell: UITableViewCell {
//
//    @IBOutlet weak var userId: UILabel!
//    @IBOutlet weak var idLabel: UILabel!
//    @IBOutlet weak var titleTextLabel: UILabel!
//    @IBOutlet weak var bodyLabel: UILabel!
//    
//
//    override func awakeFromNib() {
//        super.awakeFromNib()
//        // Initialization code
//    }
//    
//    
//    func configur(some data: (userId: Int, idLabel: Int, titleTextLabel: String, bodyLabel: String)) {
//        self.userId.text = String(data.userId)
//        self.idLabel.text = String(data.idLabel)
//        self.titleTextLabel.text = data.titleTextLabel
//        self.bodyLabel.text = data.bodyLabel
//    }
//
//    
//}
