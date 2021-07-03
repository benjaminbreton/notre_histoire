//
//  CharacterPositionProtocol.swift
//  jv3
//
//  Created by Benjamin Breton on 26/08/2020.
//  Copyright © 2020 bb. All rights reserved.
//

import Foundation
import UIKit
protocol GunDelegate {
    func characterPosition() -> CGPoint?
    func addBullet(_ bullet: BulletSprite)
}
