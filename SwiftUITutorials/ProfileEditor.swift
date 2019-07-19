//
//  ProfileEditor.swift
//  SwiftUITutorials
//
//  Created by 杨世玲 on 2019/7/19.
//  Copyright © 2019 Shiling Yang. All rights reserved.
//

import SwiftUI

struct ProfileEditor: View {
    @Binding var profile: Profile
    
    var dateRange: ClosedRange<Date> {
        let min = Calendar.current.date(byAdding: .year, value: -1, to: profile.goalDate)!
        let max = Calendar.current.date(byAdding: .year, value: 1, to: profile.goalDate)!
        return min...max
    }
    
    var body: some View {
        List {
            HStack {
                Text("UserName").bold()
                
                Divider()
                
                TextField("username", text: $profile.username)
            }
            
            Toggle(isOn: $profile.prefersNotifications) {
                Text("Notifications")
            }
            
            VStack(alignment: .leading, spacing: 20) {
                Text("Seee").bold()
                
                SegmentedControl(selection: $profile.seasonalPhoto) {
                    ForEach(Profile.Season.allCases, id: \.self) { season in
                        Text(season.rawValue).tag(season)
                    }
                }
            }
            .padding(.top)
            
            VStack(alignment: .leading, spacing: 20) {
                Text("Goal").bold()
                
                DatePicker(
                    "Goal",
                    selection: $profile.goalDate,
                    in: dateRange,
                    displayedComponents: .date)
            }
            .padding(.top)
        }
    }
}

#if DEBUG
struct ProfileEditor_Previews: PreviewProvider {
    static var previews: some View {
        ProfileEditor(profile: .constant(.default))
    }
}
#endif
