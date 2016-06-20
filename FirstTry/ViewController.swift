//
//  ViewController.swift
//  FirstTry
//
//  Created by Julia Whelan on 3/31/16.
//  Copyright © 2016 Julia Whelan. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    @IBOutlet weak var mapView: MKMapView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // set initial location in New Orleans
        let initialLocation = CLLocation(latitude: 29.950849, longitude: -90.071754)
        let regionRadius: CLLocationDistance = 2000
        func centerMapOnLocation(location: CLLocation) {
            let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,
                                                                      regionRadius * 2.0, regionRadius * 2.0)
            mapView.setRegion(coordinateRegion, animated: true)
        }
        centerMapOnLocation(initialLocation)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        // Dispose of any resources that can be recreated.
    }


}

