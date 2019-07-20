//
//  FeatureCard.swift
//  SwiftUITutorials
//
//  Created by 杨世玲 on 2019/7/20.
//  Copyright © 2019 Shiling Yang. All rights reserved.
//

import SwiftUI

struct FeatureCard: View {
    var landmark: Landmark
    
    var body: some View {
        landmark.featureImage?
            .resizable()
            .aspectRatio(3 / 2, contentMode: .fit)
            .overlay(TextOverLay(landmark: landmark))
    }
}

struct TextOverLay: View {
    var landmark: Landmark

    var gradient: LinearGradient {
        LinearGradient (
            gradient: Gradient (
                colors: [Color.black.opacity(0.6), Color.black.opacity(0)]),
                startPoint: .bottom,
                endPoint: .center
            
        )
    }

    var body: some View {
        ZStack(alignment: .bottomLeading) {
            Rectangle().fill(gradient)
            
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                    .bold()
                
                Text(landmark.park)
            }
            .padding()
        }
        .foregroundColor(.white)
    }
}

#if DEBUG
struct FeatureCard_Previews: PreviewProvider {
    static var previews: some View {
        FeatureCard(landmark: landmarkData[0])
    }
}
#endif
