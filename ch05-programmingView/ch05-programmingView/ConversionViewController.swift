//
//  ViewController.swift
//  ch05-programmingView
//
//  Created by 조현석 on 2022/03/30.
//

import UIKit

class ConversionViewController: UIViewController {
     override func viewDidLoad() {
        super.viewDidLoad()
        
        let helloLabel = UILabel(frame: CGRect(x: 100, y: 100, width: 200, height: 30))
        helloLabel.text = "Hello, Autolayout"
        helloLabel.backgroundColor = UIColor.green
        helloLabel.textAlignment = .center
        view.addSubview(helloLabel)

        
        helloLabel.translatesAutoresizingMaskIntoConstraints = false
        helloLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100).isActive = true
        helloLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
         
         class ConversionViewController: UIViewController {
             
             var fahrenheitTextField: UITextField!
             var celsiusLabel: UILabel!
         }
         extension ConversionViewController{
             func createTextField(placeHolder: String) -> UITextField{
                 let textField = UITextField(frame: CGRect())
                 textField.textAlignment = .center
                 textField.placeholder = placeHolder
                 textField.font = UIFont(name: textField.font!.fontName, size: 70)
                 textField.keyboardType = .decimalPad
                 view.addSubview(textField)
                 textField.translatesAutoresizingMaskIntoConstraints = false
                 return textField
             }

             func createLabel(_ text: String, fontSize: CGFloat) -> UILabel{
                 let label = UILabel(frame: CGRect())
                 label.text = text
                 label.textColor = UIColor(red: CGFloat(0xe1)/CGFloat(256), green: CGFloat(0x58)/CGFloat(256), blue: CGFloat(0x29)/CGFloat(256), alpha: CGFloat(1))
                 label.textAlignment = .center
                 label.font = UIFont(name: label.font!.fontName, size: fontSize)
                 view.addSubview(label)
                 label.translatesAutoresizingMaskIntoConstraints = false
                 return label
             }
         }

         class ConversionViewController: UIViewController {
             var fahrenheitTextField: UITextField!
             var celsiusLabel: UILabel!
             
             var isLabel, fdegreeLabel, cdegreeLabel: UILabel!
             // var segmentedControl: UISegmentedControl!
         }
         extension ConversionViewController{
             override func viewDidLoad() {
                 super.viewDidLoad()
                 
                 isLabel = createLabel("is", fontSize: 36)
                 isLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
                 isLabel.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor).isActive = true
             }
         }
         extension ConversionViewController{
             func connectVertically(views: UIView..., spacing: CGFloat){
                 for i in 0..<views.count - 1{
                     views[i].bottomAnchor.constraint(equalTo: views[i+1].topAnchor, constant: spacing).isActive = true
                 }
             }
             func connectHorizontally(views: UIView...){
                 for view in views{
                     view.centerXAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerXAnchor).isActive = true
                 }
             }
         }
         extension ConversionViewController{
             override func viewDidLoad() {
                 super.viewDidLoad()
                 
                 let isLabel = createLabel("is", fontSize: 36)
                 isLabel.translatesAutoresizingMaskIntoConstraints = false
                 isLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
                 isLabel.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor).isActive = true
                 
                 fahrenheitTextField = createTextField(placeHolder: "VALUE")
                 fdegreeLabel = createLabel("degrees Fahrenheit", fontSize: 36)
                 celsiusLabel = createLabel("???", fontSize: 70)
                 cdegreeLabel = createLabel("degrees Celsius", fontSize: 36)
                 
                 connectVertically(views: fahrenheitTextField, fdegreeLabel, isLabel, celsiusLabel, cdegreeLabel, spacing: 10)
                 connectHorizontally(views: fahrenheitTextField, fdegreeLabel, isLabel, celsiusLabel, cdegreeLabel)
             }
         }


    }


}

