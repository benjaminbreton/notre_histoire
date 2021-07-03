//
//  extension UIImage+inString.swift
//  jv3
//
//  Created by Benjamin Breton on 08/09/2020.
//  Copyright © 2020 bb. All rights reserved.
//

import Foundation
import UIKit
extension UIImage {
    func inString() -> String {
        let imagePic = NSTextAttachment()
        imagePic.image = self
        let imageString = NSAttributedString(attachment: imagePic)
        let text = imageString.string
        print("image : \(text)")
        return text
    }
}
