//
//  DropDownFields.swift
//  PrivacySetting
//
//  Created by Vansh Dubey on 20/06/23.
//

import UIKit

class DropDownFields: UIView {
    
    @IBOutlet weak var dropDownTextField: UITextField!
    @IBOutlet var containerView: UIView!
    @IBOutlet weak var outerView: UIView!
    @IBOutlet weak var fieldLabel: UILabel!
    @IBOutlet weak var dropDownOptionField: UITextField!
    var optionVisible = true
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configure()
        self.commonSettings()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.configure()
        self.commonSettings()
        dropDownTextField.delegate = self

    }
    
    
}

extension DropDownFields{
    
    private func configure(){
      Bundle.main.loadNibNamed("DropDownFields", owner: self, options: nil)
      self.addSubview(self.containerView)
      self.containerView.frame = self.bounds
    }
    
    private func commonSettings(){
        self.dropDownOptionField.isHidden = optionVisible
        self.dropDownTextField.text = "Everybody"
        self.dropDownTextField.setIcon(UIImage(systemName: "chevron.down")!)
        self.dropDownTextField.layer.cornerRadius = 4
        self.dropDownTextField.layer.borderColor = UIColor(red: 219/255, green: 219/255, blue: 219/255, alpha: 1).cgColor
        self.dropDownTextField.layer.borderWidth = 1
    }
}

extension DropDownFields : UITextFieldDelegate{
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textField.resignFirstResponder()
        optionVisible = !optionVisible
        self.dropDownOptionField.isHidden = optionVisible

    }
    
}
