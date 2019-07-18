//
//  UserData.swift
//  SwiftUITutorials
//
//  Created by Shiling Yang on 2019/7/16.
//  Copyright © 2019 Shiling Yang. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: BindableObject {
    let willChange = PassthroughSubject<UserData, Never>()
    
    var showFavoritesOnly = false {
        didSet {
            willChange.send(self)
        }
    }
    
    var landmarks = landmarkData {
        didSet {
            willChange.send(self)
        }
    }
}
