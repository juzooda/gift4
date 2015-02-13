//
//  LoginViewController.swift
//  Gift4
//
//  Created by Rafael Juzo G Oda on 2/13/15.
//  Copyright (c) 2015 Rafael Juzo Gomes Oda. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var doneButtonItem: UIBarButtonItem!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    

// MARK: Life Cicle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
// MARK: Actions
    
    @IBAction func cancel(sender: UIBarButtonItem) {
        
        self .dismissViewControllerAnimated(true, completion: nil)
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
