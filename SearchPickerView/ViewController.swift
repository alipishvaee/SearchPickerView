//
//  ViewController.swift
//  SearchPickerView
//
//  Created by Ali Pishvaee on 2/7/21.
//

import UIKit
import RxSwift

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    var namePickerView = UIPickerView()
    var dataSource = SamplePickerDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareView()
    }
    
    fileprivate func prepareView() {
        nameTextField.inputView = namePickerView
        dataSource.delegate = self
        namePickerView.delegate = dataSource
        namePickerView.dataSource = dataSource
    }


}

extension ViewController: SamplePickerDSDelegate {
    func didSelectName(name: String) {
        DispatchQueue.main.async {
            print("name")
        }
    }
}
