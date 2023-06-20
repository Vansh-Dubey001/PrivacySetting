//
//  ViewController.swift
//  PrivacySetting
//
//  Created by Vansh Dubey on 20/06/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var footerView: UIView!
    @IBOutlet weak var switchField1: SwitchFields!
    @IBOutlet weak var switchField2: SwitchFields!
    @IBOutlet weak var switchField3: SwitchFields!
    
    @IBOutlet weak var dropDownField1: DropDownFields!
    @IBOutlet weak var dropDownField2: DropDownFields!
    @IBOutlet weak var dropDownField3: DropDownFields!
    @IBOutlet weak var dropDownField4: DropDownFields!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.commonSetting()
    }
}

extension ViewController{
    private func commonSetting(){
        switchField1.fieldLabel.text = "Keep phone number private ?"
        switchField2.fieldLabel.text = "Keep email ID private ?"
        switchField3.fieldLabel.text = "Keep profile picture private ?"
        
        dropDownField1.fieldLabel.text = "Gender visible to"
        dropDownField1.dropDownLabel.text = "Everyone"
        dropDownField2.fieldLabel.text = "Date of birth visible to"
        dropDownField2.dropDownLabel.text = "Everyone"
        dropDownField3.fieldLabel.text = "Anniversary visible to"
        dropDownField3.dropDownLabel.text = "Everyone"
        dropDownField4.fieldLabel.text = "Blood group visbile to"
        dropDownField4.dropDownLabel.text = "Everyone"
        
        footerView.backgroundColor = UIColor.white
        footerView.layer.shadowColor = UIColor(red: 0.192, green: 0.165, blue: 0.114, alpha: 1).cgColor
        footerView.layer.shadowOpacity = 0.1
        footerView.layer.shadowRadius = 10
        footerView.layer.shadowOffset = CGSizeMake(0, -15)
    }
}
