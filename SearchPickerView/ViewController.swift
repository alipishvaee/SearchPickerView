//
//  ViewController.swift
//  SearchPickerView
//
//  Created by Ali Pishvaee on 2/7/21.
//

import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    var namePickerView = UIPickerView()
    var dataSource = SamplePickerDataSource()
    private let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareView()
    }
    
    fileprivate func prepareView() {
        nameTextField.inputView = namePickerView
        namePickerView.delegate = dataSource
        namePickerView.dataSource = dataSource
        
        dataSource.selectedName.subscribe { (selectedName) in
            self.nameTextField.text = selectedName
        }.disposed(by: disposeBag)
        
    }


}

