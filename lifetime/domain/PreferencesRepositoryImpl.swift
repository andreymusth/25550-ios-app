//
//  PreferencesRepositoryImpl.swift
//  lifetime
//
//  Created by Andrey on 10/08/2019.
//  Copyright © 2019 Latitude Apps. All rights reserved.
//

import Foundation

let BIRTH_DATE_PREF_KEY = "BIRTH_DATE_PREF_KEY"

class PreferencesRepositoryImpl: PreferencesRepository {
    
    private let userDefaults = UserDefaults.standard
    
    func setBirthdate(date: Date) {
        userDefaults.set(date, forKey: BIRTH_DATE_PREF_KEY)
    }
    
    func getBirthdate() -> Date? {
        // TODO implement this Eugene
        return nil
    }
}
