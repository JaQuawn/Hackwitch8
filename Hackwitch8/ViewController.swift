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
    
    let initialLocation = CLLocation ( latitude: 21.301154, longitude: -157.843318)
    let regionRadius: CLLocationDistance = 1000
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
            
            centerMapOnLocation(location: initialLocation)
            
            let restaurantOne = Restaurant(title: "Bubba Gumps", type: "American", coordinate: CLLocationCoordinate2D ( latitude: 21.296980, longitude: -158.055725))
            let restaurantTwo = Restaurant(title: "Mortons", type: "American", coordinate: CLLocationCoordinate2D ( latitude: 21.298527, longitude: -157.844176))
            let restaurantThree = Restaurant(title: "Cheesecake Factory", type: "American", coordinate: CLLocationCoordinate2D ( latitude: 21.284575, longitude: -157.826658))
            let restaurantFour = Restaurant(title: "Ruth Chris", type: "American", coordinate: CLLocationCoordinate2D ( latitude: 21.286708, longitude: -157.831298))
            let restaurantFive = Restaurant(title: "Kicking Cajun", type: "American", coordinate: CLLocationCoordinate2D ( latitude: 21.299454, longitude: -157.840752))
            let restaurantSix = Restaurant(title: "Raging Crab", type: "American", coordinate: CLLocationCoordinate2D ( latitude: 21.301527, longitude: -157.841866))
        
        
        
        
        
           MapView.addAnnotation(restaurantOne)
        MapView.addAnnotation(restaurantTwo)
        MapView.addAnnotation(restaurantThree)
        MapView.addAnnotation(restaurantFour)
        MapView.addAnnotation(restaurantFive)
        MapView.addAnnotation(restaurantSix)
        
        
        
        
        
        
            
    
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func centerMapOnLocation(location: CLLocation ){
        let coordinateRegion = MKCoordinateRegionMakeWithDistance (location.coordinate,regionRadius,regionRadius)
        MapView.setRegion(coordinateRegion, animated: true)}
}

