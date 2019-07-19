//
//  ProfileSummary.swift
//  SwiftUITutorials
//
//  Created by 杨世玲 on 2019/7/19.
//  Copyright © 2019 Shiling Yang. All rights reserved.
//

import SwiftUI

struct ProfileSummary: View {
    var profile: Profile
    
    static let goalFormat: DateFormatter = {
            let formatter = DateFormatter()
            formatter.dateFormat = "MMMM d, yyyy"
            return formatter
        }()
    
    var body: some View {
        List {
            Text(profile.username)
                .bold()
                .font(.title)
            
            Text("Notifications: \(self.profile.prefersNotifications ? "On": "Off" )")
                        
            Text("Seasonal Photos: \(self.profile.seasonalPhoto.rawValue)")
                        
            Text("Goal Date: \(self.profile.goalDate, formatter: Self.goalFormat)")
            
            VStack(alignment: .leading) {
                Text("Badges")
                    .font(.headline)
                
                ScrollView {
                    HStack {
                        HikeBadge(name: "First")
                        
                        HikeBadge(name: "Earth Day")
                            .hueRotation(Angle(degrees: 90))
                        
                        HikeBadge(name: "Tenth")
                            .grayscale(0.5)
                            .hueRotation(Angle(degrees: 45))
                    }
                }
                .frame(height: 140)
            }
            
            VStack(alignment: .leading) {
                Text("Recent Hikes")
                    .font(.headline)
                
                HikView(hike: hikeData[0])
            }
        }
    }
}

#if DEBUG
struct ProfileSummary_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSummary(profile: Profile.default)
    }
}
#endif
