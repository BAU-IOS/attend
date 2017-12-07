//
//  AddCourseVC.swift
//  Attend
//
//  Created by suat.karakusoglu on 16/11/2017.
//  Copyright © 2017 suat.karakusoglu. All rights reserved.
//

import UIKit

class AddCourseVC: UIViewController
{
    @IBOutlet weak var textFieldCourseName: UITextField!
    
    @IBOutlet weak var labelCourseCredit: UILabel!
    
    @IBOutlet weak var stepperCourseCredit: UIStepper!
    
    @IBOutlet weak var pickerCourseDay: UIPickerView!
    
    @IBOutlet weak var datePickerStart: UIDatePicker!
    
    @IBOutlet weak var datePickerStop: UIDatePicker!
    
    var selectedCourseCredit: Int = 0 {
        willSet(newValue) {
            self.labelCourseCredit.text = String(newValue)
            let textColor: UIColor = (newValue == 0) ? .red : .blue
            self.labelCourseCredit.textColor = textColor
        }
    }
    
    @IBAction func actionCreditChanged(_ sender: UIStepper) {
        let currentCourseCredit = Int(sender.value)
        self.selectedCourseCredit = currentCourseCredit
    }
    
    let allDays = DayType.getAllDays()
    var selectedDayType: DayType?
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.navigationItem.title = "Add Course"
        self.addDoneButtonToNavigationBar()
        self.pickerCourseDay.dataSource = self
        self.pickerCourseDay.delegate = self
        //DayType.getAllDays()
    }
    
    func addDoneButtonToNavigationBar()
    {
        let doneBarButtonItem = UIBarButtonItem(
            title: "Done",
            style: .done,
            target: self,
            action: #selector(AddCourseVC.saveCourse)
        )
        
        self.navigationItem.setRightBarButton(
            doneBarButtonItem,
            animated: true
        )
    }
    
    @objc func saveCourse()
    {
        let courseName = self.textFieldCourseName.text ?? ""
        
        let courseCredit = self.selectedCourseCredit
        let courseDay = self.selectedDayType?.rawValue ?? ""
        let startDate = self.datePickerStart.date
        let stopDate = self.datePickerStop.date
        
        let dateFormatter = DateFormatter()
        dateFormatter.timeStyle = .short
        let timeStartString = dateFormatter.string(from: startDate)
        let timeStopString = dateFormatter.string(from: stopDate)
        
        let courseToSave = Course(
            courseName: courseName,
            credit: courseCredit,
            day: courseDay,
            timeStart: timeStartString,
            timeStop: timeStopString
        )
        
        let isAddingSuccess = DataHelper.addCourse(named: courseName)
        
        if isAddingSuccess
        {
            FileHelper.saveCourse(courseToSave)
            debugPrint("Added \(courseName) succeeded.")
            let courses = DataHelper.getCourseNames()
            debugPrint("Your courses are now \(courses)")
            self.navigationController?.popViewController(animated: true)
        }else
        {
            debugPrint("Added \(courseName) failed")
        }
    }
}


























