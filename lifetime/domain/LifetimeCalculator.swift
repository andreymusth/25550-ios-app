//
//  LifetimeCalculator.swift
//  lifetime
//
//  Created by Andrey on 06/08/2019.
//  Copyright © 2019 Latitude Apps. All rights reserved.
//

import Foundation

protocol LifetimeCalculator {

    func getLeftTime(birthDate: Date) -> Lifetime
}
