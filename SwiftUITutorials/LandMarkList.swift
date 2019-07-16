//
//  LandMarkList.swift
//  SwiftUITutorials
//
//  Created by 杨世玲 on 2019/7/16.
//  Copyright © 2019 Shiling Yang. All rights reserved.
//

import SwiftUI

struct LandMarkList: View {
    @State var showFavoritesOnly = true
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                
                ForEach(landmarkData) { landmark in
                    if !self.showFavoritesOnly || landmark.isFavorite {
                        NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                            LandMarkRow(landmark: landmark)
                        }
                    }
                }
            }
            .navigationBarTitle(Text("LandMark"))
        }
    }
}

#if DEBUG
struct LandMarkList_Preview: PreviewProvider {
    static var previews: some View {
        LandMarkList()
            .previewDevice(PreviewDevice(rawValue: "iPhone XR"))
    }
}
#endif
