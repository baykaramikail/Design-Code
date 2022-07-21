//
//  Topic.swift
//  Design+Code
//
//  Created by Mikail Baykara on 21.07.2022.
//

import UIKit

class Topic {
    var topicName: String
    var topicSymbol: String
    
    init(name: String!, icon: String!){
        self.topicName = name
        self.topicSymbol = icon
    }
    
}

let topics = [
    Topic(name: "Ios Development", icon: "iphone"),
    Topic(name: "UI Designs", icon: "eye dropper"),
    Topic(name: "Web Development", icon: "desktop computer")
    
]
