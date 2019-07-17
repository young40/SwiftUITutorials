//
//  HikeDetail.swift
//  SwiftUITutorials
//
//  Created by 杨世玲 on 2019/7/18.
//  Copyright © 2019 Shiling Yang. All rights reserved.
//

import SwiftUI

struct HikeDetail : View {
    let hike: Hike
    @State var dataToShow = \Hike.Observation.elevation
    
    var buttons = [
        ("Elevation", \Hike.Observation.elevation),
        ("Heart Rate", \Hike.Observation.heartRate),
        ("Pace", \Hike.Observation.pace)
    ]
    
    var body: some View {
        VStack {
            HikeGraph(hike: hike, path: dataToShow)
                .frame(height: 300, alignment: .center)
            
            HStack {
                ForEach(buttons.identified(by: \.0)) { value in
                    Button(action: {
                        self.dataToShow = value.1
                    }) {
                        Text(verbatim: value.0)
                            .font(.system(size: 15))
                            .color(value.1 == self.dataToShow ? Color.gray : Color.accentColor)
                            .animation(nil)
                    }
                }
            }
        }
    }
}

#if DEBUG
struct HikeDetail_Previews : PreviewProvider {
    static var previews: some View {
        HikeDetail(hike: hikeData[0])
    }
}
#endif
