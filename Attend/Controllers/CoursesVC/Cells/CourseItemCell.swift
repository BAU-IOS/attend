//
//  CourseItemCell.swift
//  Attend
//
//  Created by Suat Karakusoglu on 12/7/17.
//  Copyright © 2017 suat.karakusoglu. All rights reserved.
//

import UIKit

class CourseItemCell: UICollectionViewCell
{
    @IBOutlet weak var labelCourseName: UILabel!
    @IBOutlet weak var labelCredits: UILabel!
    @IBOutlet weak var labelDate: UILabel!
    
    override func awakeFromNib()
    {
        super.awakeFromNib()
    }
    
    func applyCourseModel(course: Course)
    {
        self.labelCourseName.text = course.courseName
        self.labelCredits.text = String(course.credit) + " Credits"
        self.labelDate.text = "\(course.day) @\(course.timeStart) - \(course.timeStop)"
    }
}










