//
//  DataHelper.swift
//  Attend
//
//  Created by Suat Karakusoglu on 11/30/17.
//  Copyright © 2017 suat.karakusoglu. All rights reserved.
//

import Foundation

class DataHelper
{
    static let courseNamesKey = "courseNames"
    static let cookie = UserDefaults.standard
    
    class func getCourseNames() -> [String]
    {
        let courseNames = cookie.object(forKey: courseNamesKey) as? [String]
        
        return courseNames ?? [String]()
    }
    
    class func removeCourse(named courseName: String) -> Bool
    {
        guard isCourseExists(named: courseName) else {
                debugPrint("Course you try to remove \(courseName) not exists.")
            return false
        }
        
        var currentCourseNames = getCourseNames()
        if let indexOfCourseToRemove = currentCourseNames.index(of: courseName)
        {
            currentCourseNames.remove(at: indexOfCourseToRemove)
            cookie.set(currentCourseNames, forKey: courseNamesKey)
        }
        
        return true
    }
    
    class func addCourse(named courseName: String) -> Bool
    {
        if isCourseExists(named: courseName)
        {
            debugPrint("Course you try to add \(courseName) already exists.")
            return false
        }
        
        var currentCourseNames = getCourseNames()
        currentCourseNames.append(courseName)
        cookie.set(currentCourseNames, forKey: courseNamesKey)
        return true
    }
    
    class func isCourseExists(named courseName: String) -> Bool
    {
        let courseNames = getCourseNames()
        let isCourseAlreadyExists = courseNames.contains{ $0 == courseName}
        
        return isCourseAlreadyExists
    }
}

































