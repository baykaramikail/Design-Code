 //
//  ViewController.swift
//  Design+Code
//
//  Created by Mikail Baykara on 12.05.2022.
//

import UIKit


class FeaturedViewController: UIViewController {

    @IBOutlet var viewCard: UIView!
    @IBOutlet var blurView: UIVisualEffectView!
    @IBOutlet var handbooksCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        handbooksCollectionView.delegate = self
        handbooksCollectionView.dataSource = self
        handbooksCollectionView.layer.masksToBounds = false // bu komut cell'lerin cardView üstünde kaymasını sağlıyor
    }
    
}

extension FeaturedViewController: UICollectionViewDelegate, UICollectionViewDataSource  {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 8
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CourseCell", for: indexPath) as! HandbookCollectionViewCell
        
        
        cell.titleLabel.text = "SwiftUI Handbook"
        cell.subtitleLabel.text = "20 HOURS - 30 SECTIONS"
        cell.descriptionLabel.text = "Learn about all the basics of SwiftUI"
        cell.gradient.colors = [UIColor.red.cgColor, UIColor.systemPink.cgColor]
        cell.logo.image = UIImage(named: "Logo React")
        cell.banner.image = UIImage(named: "Illustration 2")
        
        return cell
    }
    
}

