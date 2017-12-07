//
//  Course.swift
//  Attend
//
//  Created by suat.karakusoglu on 09/11/2017.
//  Copyright © 2017 suat.karakusoglu. All rights reserved.
//

import Foundation

class Course: Codable
{
    let courseName: String
    let credit: Int
    let day: String
    let timeStart: String
    let timeStop: String
    
    init(courseName: String,
         credit: Int,
         day: String,
         timeStart: String,
         timeStop: String)
    {
        self.courseName = courseName
        self.credit = credit
        self.day = day
        self.timeStart = timeStart
        self.timeStop = timeStop
    }
    
    func toJsonString() -> String
    {
        let encoder = JSONEncoder()
        let encodedCourseData = try! encoder.encode(self)
        let encodedJson = String(
            data: encodedCourseData,
            encoding: String.Encoding.utf8
        )
        
        return encodedJson!
    }
    
    func getFileUrl() -> URL
    {
        return Course.createFileUrl(courseName: self.courseName)
    }
    
    class func createFileUrl(courseName: String) -> URL
    {
        let userDocumentsFolderPath = NSSearchPathForDirectoriesInDomains(
            .documentDirectory,
            .userDomainMask, true
            )[0]
        
        let path = userDocumentsFolderPath + "/\(courseName)"
        let fileURL = URL(fileURLWithPath: path)
        return fileURL
    }
}











