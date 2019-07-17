//
//  HikView.swift
//  SwiftUITutorials
//
//  Created by 杨世玲 on 2019/7/18.
//  Copyright © 2019 Shiling Yang. All rights reserved.
//

import SwiftUI

struct HikView : View {
    var hike: Hike
    @State private var showDetail = false
    
    var body: some View {
        VStack {
            HStack {
                HikeGraph(hike: hike, path: \.elevation)
                    .frame(width: 50, height: 30)
                
                VStack(alignment: .leading) {
                    Text(hike.name)
                        .font(.headline)
                    
                    Text(hike.distanceText)
                }
                
                Spacer()
                
                Button(action: {
                    withAnimation(.basic(duration: 4)) {
                        self.showDetail.toggle()
                    }
                }) {
                    Image(systemName: "chevron.right.circle")
                        .imageScale(.large)
                        .rotationEffect(.degrees(showDetail ? 90 : 0))
                        .animation(.spring())
                        .scaleEffect(showDetail ? 1.5 : 1)
                        .padding()
                        .animation(.spring())
                    
                }
            }
            
            if showDetail {
                HikeDetail(hike: hike)
                .padding()
            }
        }
    }
}

#if DEBUG
struct HikView_Previews : PreviewProvider {
    static var previews: some View {
        VStack {
            HikView(hike: hikeData[0])
                .padding()
            
            Spacer()
        }
       
    }
}
#endif
