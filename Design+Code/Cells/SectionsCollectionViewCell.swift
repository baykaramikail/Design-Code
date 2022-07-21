//
//  SectionsCollectionViewCell.swift
//  Design+Code
//
//  Created by Mikail Baykara on 21.07.2022.
//

import UIKit

class SectionsCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet var banner: UIImageView!
    @IBOutlet var logo: CustomImageView!
    @IBOutlet var subtitleLabel: UILabel!
    @IBOutlet var titleLabel: UILabel!
        
    override public func layoutSubviews() {
        super.layoutSubviews()
        super.layoutIfNeeded()
    }
    
    override public func awakeFromNib() {
        super.awakeFromNib()
        layer.shadowColor = UIColor(named: "Shadow")!.cgColor
        layer.shadowOpacity = 0.25
        layer.shadowOffset = CGSize(width: 0, height: 5)
        layer.shadowRadius = 10
        layer.masksToBounds = false
        layer.cornerRadius = 30
        layer.cornerCurve = .continuous

    }
  
    override func prepareForReuse() {
        super.prepareForReuse()
    }
    
}
