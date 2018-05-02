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
            let restaurantThree = Restaurant(title: "Tanaka of Tokyo", type: "American", coordinate: CLLocationCoordinate2D ( latitude: 21.291019, longitude: -157.841953))
            let restaurantFour = Restaurant(title: "Mai Tai's", type: "American", coordinate: CLLocationCoordinate2D ( latitude: 21.290641, longitude: -157.842269))
            let restaurantFive = Restaurant(title: "Mcdonald's", type: "American", coordinate: CLLocationCoordinate2D ( latitude: 21.297414, longitude: -157.840465))
            let restaurantSix = Restaurant(title: "Cinnabon", type: "American", coordinate: CLLocationCoordinate2D ( latitude: 21.290462, longitude: -157.843226))
        
        
        
        
        
           MapView.addAnnotation(restaurantOne)
        MapView.addAnnotation(restaurantTwo)
        MapView.addAnnotation(restaurantThree)
        MapView.addAnnotation(restaurantFour)
        MapView.addAnnotation(restaurantFive)
        MapView.addAnnotation(restaurantSix)
        
        
        
        
        
        
            
    
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "mySegue"
        {
    
    
    func centerMapOnLocation(location: CLLocation ){
        let coordinateRegion = MKCoordinateRegionMakeWithDistance (location.coordinate,regionRadius,regionRadius)
        MapView.setRegion(coordinateRegion, animated: true)}
}

