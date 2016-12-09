//
//  MapViewController.swift
//  Ride Sharing
//
//  Created by Drew Shea on 11/20/16.
//  Copyright © 2016 DrewShea. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class MapViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate{
    
    
    @IBOutlet var userDestinationMap: MKMapView!
    
    var locationManager: CLLocationManager!
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        if (CLLocationManager.locationServicesEnabled())
        {
            locationManager = CLLocationManager()
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyBest
            locationManager.requestAlwaysAuthorization()
            locationManager.startUpdatingLocation()
        }
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

    func locationManager(manager: CLLocationManager, didChangeAuthorizationStatus status: CLAuthorizationStatus) {
        if status == .AuthorizedWhenInUse {
            locationManager.requestLocation()
        }
    }
        
    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let location = locations.first {
            print("location:: (location)")
            let span = MKCoordinateSpanMake(0.05, 0.05)
            let region = MKCoordinateRegion(center: location.coordinate, span: span)
            userDestinationMap.setRegion(region, animated: true)
        }
    }
        
    func locationManager(manager: CLLocationManager, didFailWithError error: NSError) {
        print("error:: (error)")
        }
    }


    
