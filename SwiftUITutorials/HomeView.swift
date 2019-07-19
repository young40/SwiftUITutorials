//
//  HomeView.swift
//  SwiftUITutorials
//
//  Created by Shiling Yang on 2019/7/19.
//  Copyright © 2019 Shiling Yang. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    var categories: [String: [Landmark]] {
        .init(
            grouping: landmarkData,
            by: {$0.category.rawValue}
        )
    }
    
    var body: some View {
        NavigationView {
            List {
                ForEach(categories.keys.sorted(), id: \.self) {key in
                    Text(key)
                }
            }
            .navigationBarTitle("Featured")
        }
    }
}

#if DEBUG
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
#endif
