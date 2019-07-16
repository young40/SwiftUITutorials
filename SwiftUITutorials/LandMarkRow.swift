//
//  LandMark.swift
//  SwiftUITutorials
//
//  Created by 杨世玲 on 2019/7/16.
//  Copyright © 2019 Shiling Yang. All rights reserved.
//

import SwiftUI

struct LandMarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image(forSize: 50)
            Text(landmark.name)
            
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .imageScale(.medium)
            }
        }
    }
}

#if DEBUG
struct LandMarkRow_Preview: PreviewProvider {
    static var previews: some View {
        Group {
            LandMarkRow(landmark: landmarkData[1])
                .previewLayout(.fixed(width: 300, height: 70))
            
            LandMarkRow(landmark: landmarkData[2])
                .previewLayout(.fixed(width: 300, height: 70))
            
            LandMarkRow(landmark: landmarkData[3])
                .previewLayout(.fixed(width: 300, height: 70))
        }
    }
}
#endif
