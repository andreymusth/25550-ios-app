//
//  LifetimeCalculatorImpl.swift
//  lifetime
//
//  Created by Andrey on 11/08/2019.
//  Copyright © 2019 Latitude Apps. All rights reserved.
//

import Foundation

class LifetimeCalculatorImpl: LifetimeCalculator {
    
    func getLeftTime(birthDate: Date) -> Lifetime {
        
        
        // TODO Implement properly
        return Lifetime(daysLeft: 16000, daysLived: 9000, daysLeftPercent: 0.64, daysLivedPercent: 0.36)
    }
}
