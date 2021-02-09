//
//  SamplePickerDataSource.swift
//  SearchPickerView
//
//  Created by Ali Pishvaee on 2/9/21.
//

import UIKit

protocol SamplePickerDSDelegate: class {
    func didSelectName(name: String)
}

class SamplePickerDataSource: NSObject, UIPickerViewDelegate, UIPickerViewDataSource {
    var delegate: SamplePickerDSDelegate!
    let nameList = ["Ali", "Bob", "John", "Sam", "Sara", "Andrew", "Abraham", "George", "Donald", "Stacy", "Brian", "Joseph"]
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return nameList.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let name = nameList[row]
        return name
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let name = nameList[row]
        delegate.didSelectName(name: name)
    }
    
}
