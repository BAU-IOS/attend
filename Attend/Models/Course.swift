//
//  Course.swift
//  Attend
//
//  Created by suat.karakusoglu on 09/11/2017.
//  Copyright © 2017 suat.karakusoglu. All rights reserved.
//

import Foundation

class Course
{
    let courseCode: String
    let credit: Int
    let timeStart: String?
    let timeStop: String?
    let sectionNumber: Int?
    
    init(courseCode: String,
         credit: Int,
         timeStart: String?,
         timeStop: String?,
         sectionNumber: Int?)
    {
        self.courseCode = courseCode
        self.credit = credit
        self.timeStart = timeStart
        self.timeStop = timeStop
        self.sectionNumber = sectionNumber
    }
}











