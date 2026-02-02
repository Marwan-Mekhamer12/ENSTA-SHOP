//
//  ViewController.swift
//  ENSTA SHOP
//
//  Created by Marwan Mekhamer on 19/01/2026.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var phoneNumberTxt: UITextField!
    @IBOutlet weak var btnShape: UIButton!
    
    var viewModel = ViewModel()
    var confirm = confirmCodeViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        btnShape.layer.cornerRadius = 18
        phoneNumberTxt.layer.cornerRadius = 18
        
    }

    @IBAction func Loginpressed(_ sender: UIButton) {
        
        let trimmedPhone = phoneNumberTxt.text?.trimmingCharacters(in: .whitespacesAndNewlines) ?? ""
        
        guard !trimmedPhone.isEmpty else {
            print("phone number is empty")
            DispatchQueue.main.async {
                self.showAlert("Error", "Phone number is Empty")
            }
            return
        }
        
        let validationResult = viewModel.isValidSaudiPhone(trimmedPhone)
        
        guard validationResult else {
            self.showAlert("Error", "رقم الهاتف يجب أن يكون سعوديًا وبصيغة صحيحة")
            return
        }
        
        viewModel.sendPhoneNumber(trimmedPhone) { [weak self] result in
            DispatchQueue.main.async {
                switch result {
                case .success(let response):
                    if response.errorCode == 0 {
                        self?.navigateToValidationVC()
                    } else {
                        print("❌ SUCCESS but errorCode is \(response.errorCode)")
                        let message = response.data?.message ?? "Unknown Error"
                        self?.showAlert("Error", message)
                    }
                case .failure(let error):
                    self?.showAlert("Error", "Your phone number is invalid: \(error)")
                }
            }
        }
    }
    
    func navigateToValidationVC() {
        let trimmedPhone = phoneNumberTxt.text?.trimmingCharacters(in: .whitespacesAndNewlines) ?? ""
        
        if let vc = storyboard?.instantiateViewController(withIdentifier: "register") as? ValidationVC {
            vc.modalPresentationStyle = .fullScreen
            vc.phoneNumber = trimmedPhone
            navigationController?.pushViewController(vc, animated: true)
        } else {
            self.showAlert("Error", "Error")
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    private func showAlert(_ title: String,_ message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Okay", style: .default))
        present(alert, animated: true)
    }

    
}
