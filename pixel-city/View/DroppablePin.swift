//
//  DroppablePin.swift
//  pixel-city
//
//  Created by Mariah Baysic on 5/2/20.
//  Copyright © 2020 SpacedOut. All rights reserved.
//

import Foundation
import UIKit
import MapKit

class DroppablePin : NSObject, MKAnnotation {
    dynamic var coordinate : CLLocationCoordinate2D
    var identifier : String
    
    init(coordinate: CLLocationCoordinate2D, identifier: String) {
        self.coordinate = coordinate
        self.identifier = identifier
        
        super.init()
    }
}
