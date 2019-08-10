//
//  PreferencesRepository.swift
//  lifetime
//
//  Created by Andrey on 10/08/2019.
//  Copyright © 2019 Latitude Apps. All rights reserved.
//

import Foundation

protocol PreferencesRepository {
    
    func setBirthdate(date: Date)
    
    func getBirthdate() -> Date?
}
