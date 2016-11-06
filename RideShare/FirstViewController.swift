//
//  FirstViewController.swift
//  RideShare
//
//  Created by Marco Schwiebert on 10/31/16.
//  Copyright © 2016 mschwiebert. All rights reserved.
//

import UIKit
import Firebase

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func logOut(sender: AnyObject) {
        let firebaseAuth = FIRAuth.auth()
        do{
            try firebaseAuth?.signOut()
        } catch let signOutError as NSError{
            print("Error signing out: \(signOutError.localizedDescription)")
        }
    }


}

