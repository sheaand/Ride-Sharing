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
    
    @IBOutlet var DepartureRad: UILabel!
    @IBOutlet var DestinationRad: UILabel!
    @IBOutlet var HourWindow: UILabel!
    
    
    @IBOutlet var DepSlide: UISlider!
    @IBOutlet var DesSlide: UISlider!
    @IBOutlet var HrSlide: UISlider!
    
    @IBAction func DepartureSlider(sender: UISlider) {
        
        if Int(sender.value) > 1{
            DepartureRad.text = "\(Int(sender.value)) Miles"
        } else{
            DepartureRad.text = "\(Int(sender.value)) Mile"
        }
        
    }
    
    
    @IBAction func DestinationSlider(sender: UISlider) {
        
        if Int(sender.value) > 1{
            DestinationRad.text = "\(Int(sender.value)) Miles"
        } else{
            DestinationRad.text = "\(Int(sender.value)) Mile"
        }
        
    }
    
    
    @IBAction func DatePicker(sender: UISlider) {
        
        
        
        
    }
    
    
    @IBAction func HourSlider(sender: UISlider) {
        
        HourWindow.text = "\(Int(sender.value)) Hours"
        
        
        
    }

    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
/*
    @IBAction func logOut(sender: AnyObject) {
        let firebaseAuth = FIRAuth.auth()
        do{
            try firebaseAuth?.signOut()
        } catch let signOutError as NSError{
            print("Error signing out: \(signOutError.localizedDescription)")
        }
    }
*/

}

