//
//  UserDefaults.swift
//  SpaceX
//
//  Created by Aleksei Omelchenko on 10/31/22.
//

import Foundation

class UserSettings {
    func safeSettings(settings: [Bool]) {
        let defaults = UserDefaults.standard
        defaults.set(settings, forKey: "MeasureSettings")
    }
    func loadSettings() -> [Bool]{
        var settings = [Bool]()
        let defaults = UserDefaults.standard
        settings = defaults.array(forKey: "MeasureSettings") as? [Bool] ?? [Bool]()
        return settings
    }
}


