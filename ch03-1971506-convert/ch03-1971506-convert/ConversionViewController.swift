//
//  ConversionViewController.swift
//  ch03-1971506-convert
//
//  Created by 조현석 on 2022/03/22.
//

import UIKit

class ConversionViewController: UIViewController {

    @IBOutlet weak var fahrenheitTextField: UITextField!
    @IBOutlet weak var celsiusLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        fahrenheitTextField.delegate = self
        // Do any additional setup after loading the view.
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(dismissKeyBoard))
        view.addGestureRecognizer(tapGesture)
    }

    @IBAction func fahrenheitEditngChanged(_ sender: UITextField) {
        if let text = sender.text {
            if let fahrenheitValue = Double(text){
                let celsiusValue = 5.0/9.0*(fahrenheitValue - 32.0 )
                celsiusLabel.text = String.init(format: "%.2f", celsiusValue)
                
            }else{
                celsiusLabel.text = "???"
            }
        }
    }
}
extension ConversionViewController{
    @objc func dismissKeyBoard(sender: UITapGestureRecognizer){
        fahrenheitTextField.resignFirstResponder()
    }
}
extension ConversionViewController: UITextFieldDelegate{
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let exist = textField.text?.range(of: ".")
        let replace = string.range(of: ".")
        if exist != nil && replace != nil{
            return false
        }
        return true
    }
}
