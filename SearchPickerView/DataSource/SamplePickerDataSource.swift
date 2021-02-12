//
//  SamplePickerDataSource.swift
//  SearchPickerView
//
//  Created by Ali Pishvaee on 2/9/21.
//

import UIKit
import RxSwift
import RxCocoa

class SamplePickerDataSource: NSObject, UIPickerViewDelegate, UIPickerViewDataSource {
    
    let nameList = ["Ali", "Bob", "John", "Sam", "Sara", "Andrew", "Abraham", "George", "Donald", "Stacy", "Brian", "Joseph"]
    
    let selectedName = PublishSubject<String>()
    
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
        selectedName.onNext(name)
    }
    
}
