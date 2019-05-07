//
//  ViewController.swift
//  MapkitTutorial
//
//  Created by loveapplepi on 29/04/2019.
//  Copyright © 2019 loveapplepi. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    let distance: CLLocationDistance = 800
    let pitch: CGFloat = 400
    let heading = 45.0
    var camera: MKMapCamera?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mapView.mapType = .satelliteFlyover
        let coordinate = CLLocationCoordinate2DMake(38.889819, -77.009066)
        camera = MKMapCamera(lookingAtCenter: coordinate, fromDistance: distance, pitch: pitch, heading: heading)
        mapView.camera = camera!
        
    }

    @IBAction func rotateLeft(_ sender: Any) {
        UIView.animate(withDuration: 1.0, animations: {
            self.camera!.heading -= 10
            self.mapView.camera = self.camera!
        })
    }
    
    @IBAction func rotateRight(_ sender: Any) {
        UIView.animate(withDuration: 1.0, animations: {
            self.camera!.heading += 10
            self.mapView.camera = self.camera!
        })
    }
}

