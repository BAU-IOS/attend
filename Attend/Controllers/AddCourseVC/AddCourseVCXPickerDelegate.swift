//
//  AddCourseVCXPickerDelegate.swift
//  Attend
//
//  Created by suat.karakusoglu on 23/11/2017.
//  Copyright © 2017 suat.karakusoglu. All rights reserved.
//

import UIKit

extension AddCourseVC: UIPickerViewDelegate
{
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let titleForDay = self.allDays[row]
        return titleForDay.rawValue
    }
}
