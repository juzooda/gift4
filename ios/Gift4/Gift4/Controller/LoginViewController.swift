//
//  LoginViewController.swift
//  Gift4
//
//  Created by Rafael Juzo G Oda on 2/13/15.
//  Copyright (c) 2015 Rafael Juzo Gomes Oda. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var doneButton: UIBarButtonItem!
    

// MARK: Life Cicle
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
    }

    
// MARK: Actions
    
    @IBAction func close(sender: UIBarButtonItem) {
    
        self .dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func login(sender: UIBarButtonItem) {
        
        
        
    }
    
    
    @IBAction func dismissKeyboard(sender: UITapGestureRecognizer) {
        
        self.emailTextField .resignFirstResponder()
        self.passwordTextField .resignFirstResponder()
    
    }
    

//MARK: UITextFieldDelegate
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        if isValidEmail() && countElements(self.passwordTextField.text) > 1{
            self.doneButton.enabled = true
        }else{
            self.doneButton.enabled = false
        }
        
        return true
    }
    
//MARK: Text Field Requirements
    
    func isValidEmail() -> Bool {
        
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{1,4}"
        
        if let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx) {
            return emailTest.evaluateWithObject(self.emailTextField.text)
        }
        
        return false
    }
    
    
// MARK: - Navigation
    
    /*
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
    }
    
    */
}
