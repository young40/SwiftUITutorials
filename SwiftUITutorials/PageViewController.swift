//
//  PageViewController.swift
//  SwiftUITutorials
//
//  Created by 杨世玲 on 2019/7/20.
//  Copyright © 2019 Shiling Yang. All rights reserved.
//

import SwiftUI
import UIKit

struct PageViewController: UIViewControllerRepresentable {
    var controllers: [UIViewController]
    
    func makeUIViewController(context: Context) -> UIPageViewController {
        let pageViewController = UIPageViewController(
            transitionStyle: .scroll, navigationOrientation: .horizontal
        )
        
        return pageViewController
    }
    
    func updateUIViewController(_ pageViewController: UIPageViewController, context: Context) {
        pageViewController.setViewControllers(
            [controllers[0]], direction: .forward, animated: true
        )
    }
    
//    var body: some View {
//        Text("Hello World!")
//    }
}

#if DEBUG
//struct PageViewController_Previews: PreviewProvider {
//    static var previews: some View {
//        PageViewController()
//    }
//}
#endif
