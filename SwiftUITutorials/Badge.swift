//
//  Badge.swift
//  SwiftUITutorials
//
//  Created by Shiling Yang on 2019/7/16.
//  Copyright © 2019 Shiling Yang. All rights reserved.
//

import SwiftUI

struct Badge : View {
    var body: some View {
        Text("Hello World!")
    }
}

#if DEBUG
struct Badge_Previews : PreviewProvider {
    static var previews: some View {
        Badge()
    }
}
#endif
