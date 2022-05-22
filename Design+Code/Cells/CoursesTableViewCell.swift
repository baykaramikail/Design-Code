//
//  CoursesTableViewCell.swift
//  Design+Code
//
//  Created by Mikail Baykara on 22.05.2022.
//

import UIKit

class CoursesTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.shadowColor = UIColor(named: "Shadow")!.cgColor
        layer.shadowOpacity = 0.5
        layer.shadowOffset = CGSize(width: 0, height: 5)
        layer.shadowRadius = 10
        layer.cornerRadius = 30
        layer.masksToBounds = false
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
