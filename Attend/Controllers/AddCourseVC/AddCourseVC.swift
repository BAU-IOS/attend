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
        debugPrint("You should now save the course.")
    }
}























