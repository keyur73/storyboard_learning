//
//  ViewController.swift
//  storyboard learning
//
//  Created by Keyur Khambhadiya on 28/03/24.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    
    override func viewDidLoad() {
        super.viewDidLoad ()
        textField.delegate = self
        textField2.delegate = self
        self.hideKeyboardTappedAround()
    }
    // this function is used for when you press return on keybord it will disapear
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }


    extension UIViewController{
        func hideKeyboardTappedAround (){
            let tap:UITapGestureRecognizer = UITapGestureRecognizer (target:self, action:#selector(UIViewController.dismissKeyboard) )
            tap.cancelsTouchesInView = false
            view.addGestureRecognizer(tap)
        }

    @objc func dismissKeyboard(){
        view.endEditing (true)
    }
}
