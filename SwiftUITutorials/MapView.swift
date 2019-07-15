//
//  MapView.swift
//  SwiftUITutorials
//
//  Created by Shiling Yang on 2019/7/15.
//  Copyright © 2019 Shiling Yang. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ view: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(
            latitude: 39.011286, longitude: 115.166868
        )

        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        
        let region = MKCoordinateRegion(center: coordinate, span: span)
        
        view.setRegion(region, animated: true)
    }
}

#if DEBUG
struct MapView_Preview: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
#endif
