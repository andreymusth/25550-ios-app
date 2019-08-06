//
//  LifeTime.swift
//  lifetime
//
//  Created by Andrey on 06/08/2019.
//  Copyright © 2019 Latitude Apps. All rights reserved.
//

import Foundation

struct Lifetime {
    
    let daysLeft: Int
    let daysLived: Int
    let daysLeftPercent: Float
    let daysLivedPercent: Float
    
    init(daysLeft: Int, daysLived: Int, daysLeftPercent: Float, daysLivedPercent: Float) {
        self.daysLeft = daysLeft
        self.daysLived = daysLived
        self.daysLeftPercent = daysLeftPercent
        self.daysLivedPercent = daysLivedPercent
    }
}
