//
//  AddCourseVCXPickerDataSource.swift
//  Attend
//
//  Created by suat.karakusoglu on 23/11/2017.
//  Copyright © 2017 suat.karakusoglu. All rights reserved.
//

import UIKit

extension AddCourseVC: UIPickerViewDataSource
{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return self.allDays.count
    }
}
