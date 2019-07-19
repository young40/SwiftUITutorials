//
//  ProfileHost.swift
//  SwiftUITutorials
//
//  Created by 杨世玲 on 2019/7/19.
//  Copyright © 2019 Shiling Yang. All rights reserved.
//

import SwiftUI

struct ProfileHost: View {
    @Environment(\.editMode) var mode
    
    @State var profile = Profile.default
    @State var draftProfile = Profile.default
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack {
                Spacer()
                
                EditButton()
            }
            
            if self.mode?.value == .inactive {
                ProfileSummary(profile: self.profile)
            } else {
                Text("ttt")
            }
            
        }
        .padding()
    }
}

#if DEBUG
struct ProfileHost_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHost()
    }
}
#endif
