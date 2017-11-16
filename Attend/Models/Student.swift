//
//  Student.swift
//  Attend
//
//  Created by Furkan Kahyalar on 10/11/2017.
//  Copyright © 2017 suat.karakusoglu. All rights reserved.
//

import Foundation

class Student
{
    let firstName: String
    let lastName: String
    let studentNumber: String
    let department: String
    let classNo: Int
    var fullName: String {
        return self.firstName + " " + self.lastName
    }
    
    init(firstName: String,
         lastName: String,
         studentNumber: String,
         department: String,
         classNo: Int)
    {
        self.firstName = firstName
        self.lastName = lastName
        self.studentNumber = studentNumber
        self.department = department
        self.classNo = classNo
    }
//
//    func getFullName() -> String
//    {
//        return self.firstName + " " + self.lastName
//    }
}



















