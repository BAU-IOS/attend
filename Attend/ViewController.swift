//
//  ViewController.swift
//  Attend
//
//  Created by suat.karakusoglu on 09/11/2017.
//  Copyright © 2017 suat.karakusoglu. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.navigationItem.title = "Courses"
        self.addCourseButtonToRight()
        let ahmet = Student(
            firstName: "Ahmet",
            lastName: "Aykac",
            studentNumber: "StudentNum",
            department: "Comp. Science",
            classNo: 4440)
    }
    
    func addCourseButtonToRight()
    {
        let imageAddCourse = #imageLiteral(resourceName: "icon_add_course")
        let addCourseButton = UIBarButtonItem(
            image: imageAddCourse,
            style: UIBarButtonItemStyle.plain,
            target: self,
            action: #selector(ViewController.userClickedAddCourse)
        )
        addCourseButton.tintColor = UIColor.orange
        self.navigationItem.rightBarButtonItem = addCourseButton
    }
    
    @objc func userClickedAddCourse()
    {
        let addCourseVC = AddCourseVC(
            nibName: "AddCourseVC",
            bundle: nil)
        
        self.navigationController?.pushViewController(
            addCourseVC,
            animated: true
        )
        debugPrint("User clicked add course.")
    }
}
























