//
//  Model.swift
//  DevMood
//
//  Created by mac on 2021/03/18.
//

import Foundation

enum MoodType: Int {
    case good = 0
    case soso
    case bad
}

struct Mood {
    var count: Int
    
    var level: String {
        if count > 5 {
            return "진짜"
        } else if count > 10 {
            return "매우"
        } else {
            return "그냥"
        }
    }
}
