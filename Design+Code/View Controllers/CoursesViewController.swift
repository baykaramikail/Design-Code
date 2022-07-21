//
//  CoursesViewController.swift
//  Design+Code
//
//  Created by Mikail Baykara on 4.07.2022.
//

import UIKit
import Combine

class CoursesViewController: UIViewController {
    var course: Course?
    
    @IBOutlet var bannerImage: UIImageView!
    @IBOutlet var backgroundImage: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var authorLabel: UILabel!
    @IBOutlet var subtitleLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    @IBOutlet var iconImageView: CustomImageView!
    
    @IBOutlet var menuButton: UIButton!
    
    @IBOutlet var sectionsTableView: UITableView!
    @IBOutlet var tableViewHeight: NSLayoutConstraint!
    private var tokens: Set<AnyCancellable> = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sectionsTableView.delegate = self
        sectionsTableView.dataSource = self
        sectionsTableView.publisher(for: \.contentSize).sink { contentSize in
            self.tableViewHeight.constant = contentSize.height + 10
        }.store(in: &tokens)
        
    
        self.iconImageView.image = course?.courseIcon
        self.bannerImage.image = course?.courseBanner
        self.backgroundImage.image = course?.courseBackground
        self.titleLabel.text = course?.courseTitle
        self.subtitleLabel.text = course?.courseSubtitle
        self.descriptionLabel.text = course?.courseDescription
        self.authorLabel.text = "Taught by \(course?.courseAuthor?.formatted(.list(type: .and, width: .standard)) ?? "me")"
        
        
    // Create Menu
    
    let menu = UIMenu(title: "Course Options",
                      options: .displayInline,
                      children: [
                        UIAction(title: "Share", image: UIImage(systemName: "square.and.arrow.up"), handler: { _ in
                            // Share course
                        }),
                        UIAction(title: "Take Test", image: UIImage(systemName: "highlighter"), handler: { _ in
                            // Take test
                        }),UIAction(title: "Download", image: UIImage(systemName: "square.and.arrow.down"), handler: { _ in
                            // Download course
                        }),UIAction(title: "Forums", image: UIImage(systemName: "chevron.left.forwardslash.chevron.right"), handler: { _ in
                            // Forums
                        })
                        
                        ]
                    )
        menuButton.showsMenuAsPrimaryAction = true
        menuButton.menu = menu

    }
    
    @IBAction func goBack(_ sender: Any) {
        dismiss(animated: true, completion: nil)  
    }
    
}

extension CoursesViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.course?.sections?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SectionCell", for: indexPath)
as! SectionTableViewCell
        
        if let selectedCourse = course{
            let selectedSection = selectedCourse.sections![indexPath.row]
            
            cell.titleLabel.text = selectedSection.sectionTitle
           // cell.courseLogo.image = selectedSection.sectionIcon
            cell.subtitleLabel.text = selectedSection.sectionSubtitle
            cell.descriptionLabel.text = selectedSection.sectionDescription
            
        }
        return cell
    
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
