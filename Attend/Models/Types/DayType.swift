//
//  DayType.swift
//  Attend
//
//  Created by suat.karakusoglu on 23/11/2017.
//  Copyright © 2017 suat.karakusoglu. All rights reserved.
//

import Foundation

enum DayType: String
{
    case monday = "Monday"
    case tuesday = "Tuesday"
    case wednesday = "Wednesday"
    case thursday = "Thursday"
    case friday = "Friday"
    case saturday = "Saturday"
    case sunday = "Sunday"
    
    static func getAllDays() -> [DayType]
    {
        let allDays: [DayType] = [
            .monday,
            .tuesday,
            .wednesday,
            .thursday,
            .friday,
            .saturday,
            .sunday
        ]
        
        return allDays
    }
}















