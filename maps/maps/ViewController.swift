//
//  ViewController.swift
//  maps
//
//  Created by Archit Rathi on 8/14/15.
//  Copyright (c) 2015 Archit Rathi. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet var map: MKMapView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var lat:CLLocationDegrees = 43.095181;
        var long:CLLocationDegrees = -79.006424;
        
        var latDelta:CLLocationDegrees = 0.01;
        var longDelta:CLLocationDegrees = 0.01;
        
        var span:MKCoordinateSpan = MKCoordinateSpanMake(latDelta, longDelta);
        var loca:CLLocationCoordinate2D = CLLocationCoordinate2DMake(lat, long);
        
        var region:MKCoordinateRegion = MKCoordinateRegionMake(loca, span);
        
        map.setRegion(region, animated: true);

        
        var annotation = MKPointAnnotation();
        
        annotation.coordinate = loca;
        
        annotation.title = "Niagara Falls";
        annotation.subtitle = "I've been there";
        
        map.addAnnotation(annotation);
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

