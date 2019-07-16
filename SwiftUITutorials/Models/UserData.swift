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
    let didChange = PassthroughSubject<UserData, Never>()
    
    var showFavoritesOnly = false {
        didSet {
            didChange.send(self)
        }
    }
    
    var landmarks = landmarkData {
        didSet {
            didChange.send(self)
        }
    }
}
