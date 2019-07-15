//
//  ContentView.swift
//  SwiftUITutorials
//
//  Created by Shiling Yang on 2019/7/15.
//  Copyright © 2019 Shiling Yang. All rights reserved.
//

import SwiftUI

struct LandmarkDetail : View {
    var landmark: Landmark
    
    var body: some View {
        VStack {
            MapView(coordinate: landmark.locationCoordinate)
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)
            
            CircleImage(image: landmark.image(forSize: 250))
                .offset(y: -130)
                .padding(.bottom, -130)
            
            Text(landmark.name)
                .font(.title)
                .color(.green)

            HStack {
                Text(landmark.park)
                    .font(.subheadline)

                Spacer()

                Text(landmark.state)
            }
            .padding()
            
            Spacer()
        }
        .navigationBarTitle(Text(landmark.name), displayMode: .inline)
    }
}

#if DEBUG
struct LandmarkDetail_Previews : PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarkData[1])
    }
}
#endif
