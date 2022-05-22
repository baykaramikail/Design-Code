//
//  Course.swift
//  Design+Code
//
//  Created by Mikail Baykara on 15.05.2022.
//

import UIKit

class Course {
    var courseTitle: String
    var courseSubtitle: String
    var courseDescription: String
    var courseIcon: UIImage?
    var courseBanner: UIImage?
    var courseAuthor: [String]?
    var courseGradient: [CGColor]?
    var courseBackground: UIImage?
    
    init(title: String, subtitle: String, description: String, icon: UIImage, banner: UIImage, authors: [String]? = nil, colors: [CGColor]? = nil, background: UIImage? = nil  ) {
        
        self.courseTitle = title
        self.courseSubtitle = subtitle
        self.courseDescription = description
        self.courseIcon = icon
        self.courseBanner = banner
        self.courseAuthor = authors
        self.courseGradient = colors
        self.courseBackground = background
        
    }
    
    let handbooks:Array = [Course(title: "SwiftUI handbook", subtitle: "80 SECTIONS - 9 HOURS ", description: "Buils ana ios app for ios 15 with custom layouts, animations and more!", icon: UIImage(named: "Logo SwiftUI")!, banner: UIImage(named: "Illustration 2")!, authors: ["Meng To"], colors: [UIColor(red: 0.3, green: 0.23, blue: 0.44, alpha: 1.0).cgColor, UIColor(red: 0.33, green: 0.34, blue: 0.45, alpha: 1.0).cgColor]),
        Course(title: "React Hooks Handbook", subtitle: "30 SECTIONS - 3 HOURS", description: "Build an ios app for ios 15 with custom layouts, animations and more!", icon: UIImage(named: "Logo React")!, banner: UIImage(named: "Illustration 4")!, authors: ["Meng To, Stephine Diep"])
    ]
        
}
