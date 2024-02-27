//
//  Map+UIKit.swift
//  Map
//
//  Created by Paul Kraft on 25.04.22.
//

#if canImport(UIKit) && !os(watchOS)

import MapKit
import UIKit
import SwiftUI

extension Map: UIViewRepresentable {

    public func makeUIView(context: Context) -> MKMapView {
        // let mapView = MKMapView()
        // mapView.delegate = context.coordinator
        // updateUIView(mapView, context: context)
        // return mapView

        print("display lenght", forDisplay.count)
        ///  creating a map
        let view = MKMapView()
        /// connecting delegate with the map
        view.delegate = context.coordinator
        view.setRegion(region, animated: false)
        view.mapType = .standard
        
        for points in self.annotationItems {
            let annotation = LandmarkAnnotation(coordinate: points.coordinate)
            view.addAnnotation(annotation)
        }
        

        return view
    }

    public func updateUIView(_ mapView: MKMapView, context: Context) {
        // context.coordinator.update(mapView, from: self, context: context)
    }

}

#endif
