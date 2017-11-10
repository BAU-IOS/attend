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
    var fullName: String
    let firstName: String
    let lastName: String
    let studentNumber: String
    let department: String
    let classNo: Int
    
    init(firstName: String, lastName: String, studentNumber: String, department: String, classNo: Int)
    {
        self.firstName = firstName
        self.lastName = lastName
        self.studentNumber = studentNumber
        self.department = department
        self.classNo = classNo
        
        fullName = firstName + " " + lastName
    }
}
