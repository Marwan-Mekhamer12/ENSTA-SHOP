//
//  RegisterVC.swift
//  ENSTA SHOP
//
//  Created by Marwan Mekhamer on 20/01/2026.
//

import UIKit

class ValidationVC: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet weak var NumberLabel: UILabel!
    @IBOutlet weak var Code1: UITextField!
    @IBOutlet weak var Code2: UITextField!
    @IBOutlet weak var Code3: UITextField!
    @IBOutlet weak var Code4: UITextField!
    
    @IBOutlet weak var timerTime: UILabel!
    @IBOutlet weak var BTNShape: UIButton!
    
    var phoneNumber: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        NumberLabel.text = phoneNumber
        [Code1, Code2, Code3, Code4].forEach {
            $0?.delegate = self
//            $0?.layer.cornerRadius = 25
            $0?.layer.borderWidth = 1
//            $0?.layer.borderColor = UIColor.gray.cgColor
        }
        Code1.becomeFirstResponder()
        
        
        BTNShape.layer.cornerRadius = 25
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if string.count == 1 {
            if textField == Code1{
                Code2.becomeFirstResponder()
            }
            else if textField == Code2{
                Code3.becomeFirstResponder()
            }
            else if textField == Code3 {
                Code4.becomeFirstResponder()
            }else {
                view.endEditing(true)
                // Check from validatio code
            }
            textField.text = string
            return false
        }
        
        return true
    }
    
    @IBAction func NotGetCode(_ sender: UIButton) {
    }
    
    // if code is not send(Return code) else (Continue)
    @IBAction func RetrunCodeAndPressed(_ sender: UIButton) {
        view.endEditing(true)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
}
