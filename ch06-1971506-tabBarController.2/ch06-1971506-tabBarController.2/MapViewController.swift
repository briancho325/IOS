//
//  MapViewController.swift
//  ch06-1971506-tabBarController.2
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
    @IBAction func segmentedControlValueChanged(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex{
        case 0:
            mapView.mapType = .standard
        case 1:
            mapView.mapType = .hybrid
        case 2:
            mapView.mapType = .satellite
        default:
            break
        }
    }
}
extension MapViewController{
    override func viewWillAppear(_ animated: Bool) {
        print("MapViewController.viewWillAppear")
        
        let tabBarController = parent as! UITabBarController
        let CityViewController = tabBarController.viewControllers![0] as! CityViewController
        let (city, longitude, latitude) = CityViewController.getCurrentLonLat()
        
        updateMap(tilte: city, longitude: longitude, latitude: latitude)
    }
}

extension MapViewController{
    func updateMap(tilte: String, longitude: Double?, latitude: Double?){
        let span = MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)
        var center = mapView.centerCoordinate
        if let lon = longitude, let lat = latitude{
            center = CLLocationCoordinate2D(latitude: lat, longitude: lon)
        }
        let region = MKCoordinateRegion(center: center, span: span)
        mapView.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = center
        annotation.title = title
        mapView.addAnnotation(annotation)
    }
}
