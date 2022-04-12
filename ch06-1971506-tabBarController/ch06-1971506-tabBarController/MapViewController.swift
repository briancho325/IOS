//
//  MapViewController.swift
//  ch06-1971506-tabBarController
//
//  Created by 조현석 on 2022/04/12.
//

import UIKit
import MapKit

class MapViewController: UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print("MapViewController.viewDidLoad")
    }
    
}
extension MapViewController{
    override func viewWillAppear(_ animated: Bool) {
        print("MapViewController.viewDidLoad")
    }
}
