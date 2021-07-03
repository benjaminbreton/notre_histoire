//
//  Gift.swift
//  jv3
//
//  Created by Benjamin Breton on 21/08/2020.
//  Copyright © 2020 bb. All rights reserved.
//

import Foundation
class Gift {
    let title: String
    let description: String
    let image: String
    init(title: String, description: String, image: String) {
        self.title = title
        self.description = description
        self.image = image
    }
    
    func formattedDescription() -> String {
        let split = description.split(separator: " ").map({ "\($0)" })
        var text: String = ""
        var count: Int = 0
        let maxCount: Int = Int(50 * System.resize)
        for word in split {
            if count + word.count > maxCount {
                count = word.count
                text += "\n\(word)"
            } else {
                count += word.count
                text += " \(word)"
            }
        }
        return text
    }
}
