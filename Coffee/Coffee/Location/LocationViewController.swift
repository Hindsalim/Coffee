//
//  LocationViewController.swift
//  Coffee
//
//  Created by HIND12 on 06/05/1443 AH.
//

import UIKit
import MapKit
class LocationViewController: UIViewController , MKMapViewDelegate {

    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let initialLoc = CLLocation (latitude:,longitude: ,
     setStartingLocation(location: initialLoc, distance: 0)
                                     
   }
                            
    
   func setStartingLocation(location: CLLocation, distance: CLLocationDistance){
            
 let region = MKCoordinateRegi (center: location.coordintelatitudinalMeters: distance, latitudinalMeters:distance)
mapView.setRegion(region, animated: true
    
}









    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

//   @IBOutlet weak var mapOutLet: MKMapView!
