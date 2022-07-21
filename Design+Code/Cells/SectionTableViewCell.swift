//
//  SectionTableViewCell.swift
//  Design+Code
//
//  Created by Mikail Baykara on 6.07.2022.
//

import UIKit

class SectionTableViewCell: UITableViewCell {
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var subtitleLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    @IBOutlet var courseLogo: CustomView!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

}
