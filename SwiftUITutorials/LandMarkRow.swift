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
        }
    }
}

#if DEBUG
struct LandMarkRow_Preview: PreviewProvider {
    static var previews: some View {
        LandMarkRow(landmark: landmarkData[1])
    }
}
#endif
