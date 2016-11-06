//
//  LoginViewController.swift
//  RideShare
//
//  Created by Marco Schwiebert on 10/31/16.
//  Copyright © 2016 mschwiebert. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    

    override func viewDidLoad() {
        
        super.viewDidLoad()

        if (FIRAuth.auth()?.currentUser) != nil{
            performSegueWithIdentifier("ontoApp", sender: self)
        } //if logged in, do not show log in page and skip to app
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Login(sender: AnyObject) {
        guard let email = emailTextField.text, let password = passwordTextField.text else { return }
        FIRAuth.auth()?.signInWithEmail(email, password: password, completion: { (user, error) in
            if let error = error{
                print(error.localizedDescription)
                return
            }else{
                self.performSegueWithIdentifier("ontoApp", sender: self)
            }
            
        })
    }
    
    
    @IBAction func SignUp(sender: AnyObject) {
        guard let email = emailTextField.text, let password = passwordTextField.text else { return }
        FIRAuth.auth()?.createUserWithEmail(email, password: password, completion: { (user, error) in
            if let error = error{
                print(error.localizedDescription)
                return
            }
        })

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
