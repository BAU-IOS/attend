//
//  FileHelper.swift
//  Attend
//
//  Created by Suat Karakusoglu on 12/7/17.
//  Copyright © 2017 suat.karakusoglu. All rights reserved.
//

import Foundation

class FileHelper
{
    class func saveCourse(_ course: Course)
    {
        let fileUrl = course.getFileUrl()
        let courseString = course.toJsonString()
        
        do {
            try courseString.write(
                to: fileUrl,
                atomically: true,
                encoding: .utf8
            )
        }catch{
            print("Error saving named \(course.courseName)")
        }
    }
    
    class func getCourse(courseName: String) -> Course?
    {
        let courseFileUrl = Course.createFileUrl(courseName: courseName)
        do{
            let courseJsonString = try String(contentsOf: courseFileUrl)
            
            if let courseString = courseJsonString.data(using: .utf8)
            {
                let jsonDecoder = JSONDecoder()
                let courseModel = try? jsonDecoder.decode(
                    Course.self,
                    from: courseString
                )
                
                return courseModel
            }
        } catch let error {
            debugPrint(
                "Error while reading \(courseName) : \(error)"
            )
            return nil
        }
    
        return nil
    }
}




















