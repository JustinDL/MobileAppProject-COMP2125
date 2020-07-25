//
//  ProductDetailViewController.swift
//  MobileAppProject-COMP2125
//
//  Created by Justin Lucas on 2020-07-21.
//  Copyright © 2020 Birhanu Bishaw + Justin Lucas. All rights reserved.
//

import UIKit
import MapKit


class ProductDetailViewController: UIViewController {

    // outlets
    // name of item
    @IBOutlet weak var ItemName: UILabel!
    // price of item
    @IBOutlet weak var ItemPrice: UILabel!
    // picture of item
    @IBOutlet weak var ItemPic: UIImageView!
    // name of seller
    @IBOutlet weak var SellerName: UILabel!
    // phone number of seller
    @IBOutlet weak var SellerNum: UILabel!
    // map outlet
    @IBOutlet weak var MapView: MKMapView!
    
    // local variables
    var itemName:String!
    var itemPrice:String!
    var itemPic:UIImage!
    var sellerName:String!
    var sellerNum:String!
    
    // variables for map coords
    var sellerLat:Double!
    var sellerLong:Double!
    
    
    // map variables
    var locationCoordinates:CLLocationCoordinate2D = CLLocationCoordinate2D.init(latitude: 0, longitude: 0)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set outlets to given variable values
        ItemName.text = itemName
        ItemPrice.text = itemPrice
        ItemPic.image = itemPic
        SellerName.text = sellerName
        SellerNum.text = sellerNum
        
        
        // run map functions
        setUpLocation()
        setUpAnnonation()
        
        // Do any additional setup after loading the view.
    }
    
    // function to change map from satellite or normal view
    @IBAction func changeMapType(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            MapView.mapType = .standard
        }
        else {
            MapView.mapType = .satellite
        }
    }
    
    
    // sets location of map pin
    // coordinates for lat/long are stored in variables so they can change depending on listing chosen
    private func setUpLocation()
    {
        let locationSpan = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
        locationCoordinates = CLLocationCoordinate2DMake(sellerLat, sellerLong)
        let locationRegion = MKCoordinateRegion(center: locationCoordinates, span: locationSpan)
        MapView.setRegion(locationRegion, animated: true)
        
    } // end func...

    // creates an annotation on the pin on the map
    private func setUpAnnonation()
    {
    let annotation = MKPointAnnotation() // object of MKPointAnnotation class
    annotation.coordinate = locationCoordinates // assigning the location coordinates to annotation object
    annotation.title = "Seller Location"
    annotation.subtitle = "Call to arrange meeting!"
    MapView.addAnnotation(annotation)
    } // end func...
    

}
