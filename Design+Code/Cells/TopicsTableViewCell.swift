//
//  TopicsTableViewCell.swift
//  Design+Code
//
//  Created by Mikail Baykara on 21.07.2022.
//

import UIKit

class TopicsTableViewCell: UITableViewCell {

    @IBOutlet var topicLabel: UILabel!
    @IBOutlet var topicIcon: CustomView!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

}
