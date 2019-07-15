//
//  ContentView.swift
//  SwiftUITutorials
//
//  Created by Shiling Yang on 2019/7/15.
//  Copyright © 2019 Shiling Yang. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Turtle Rock")
                .font(.title)
                .color(.green)

            HStack {
                Text("Joshua Tree Nation Park")
                    .font(.subheadline)

                Spacer()

                Text("California")
            }
        }
        .padding()
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
