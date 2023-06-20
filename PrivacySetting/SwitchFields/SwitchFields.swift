//
//  SwitchFields.swift
//  PrivacySetting
//
//  Created by Vansh Dubey on 20/06/23.
//

import UIKit

class SwitchFields: UIView {

    @IBOutlet var containerView: UIView!
      @IBOutlet weak var outerView: UIView!
      @IBOutlet weak var fieldLabel: UILabel!
      @IBOutlet weak var fieldSwitch: UISwitch!
      override class func awakeFromNib() {
        super.awakeFromNib()
      }
      override init(frame: CGRect) {
        super.init(frame: frame)
        self.configure()
      }
      required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.configure()
      }
      private func configure(){
        Bundle.main.loadNibNamed("SwitchFields", owner: self, options: nil)
        self.addSubview(self.containerView)
        self.containerView.frame = self.bounds
        self.fieldSwitch.setSize()
      }

}
