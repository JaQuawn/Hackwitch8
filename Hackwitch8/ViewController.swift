//
//  ViewController.swift
//  Hackwitch8
//
//  Created by CM Student on 4/2/18.
//  Copyright © 2018 CM Student. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {

    @IBOutlet weak var MapView: MKMapView!
    
    let initialLocation = CLLocation ( latitude: 21.361888, longitude: -158.055725)
    let regionRadius: CLLocationDistance = 1000
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        func centerMapOnLocation(location: CLLocation ){
            let coordinateRegion = MKCoordinateRegionMakeWithDistance (location.coordinate,regionRadius,regionRadius)
            MapView.setRegion(coordinateRegion, animated: true)
            
            centerMapOnLocation(location: initialLocation)
            
            let restaurantOne = Restaurant(title: "kalapawai", type: "American", coordinate: CLLocationCoordinate2D ( latitude: 21.346470, longitude: -158.080098))
            
           MapView.addAnnotation(restaurantOne)
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

