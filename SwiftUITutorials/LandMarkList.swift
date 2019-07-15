//
//  LandMarkList.swift
//  SwiftUITutorials
//
//  Created by 杨世玲 on 2019/7/16.
//  Copyright © 2019 Shiling Yang. All rights reserved.
//

import SwiftUI

struct LandMarkList: View {
    var body: some View {
        NavigationView {
            List(landmarkData) { landmark in
                NavigationLink(destination: LandmarkDetail()) {
                    LandMarkRow(landmark: landmark)
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
    }
}
#endif
