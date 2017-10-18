//
//  ViewController.swift
//  GetAllSubviewsDemo
//
//  Created by Alexey Danilov on 13/10/2017.
//  Copyright © 2017 DanilovDev. All rights reserved.
//

import UIKit

class CustomView: UIView {
    
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        print(getSubviewsOfView(view: self.view).count)
//
//        let allLabels: [UILabel] = self.getSubviewsOfView(view: self.view)
//        let allViews = self.getSubviewsOfView(view: self.view)
//
//        print(allLabels.count)
//
//        let allView = self.view.subviews.filter { $0 is CustomView }
        
//        print(self.view.getSubviewsOfView(type: UIView.self).count)
//        print(getSubviewsOfView(view: self.view).count)
        print("result: \(self.view.getSubviewsOfView(type: UIView.self, recursive: true).count)")
    }

//    func getSubviewsOfView(v:UIView) -> [UIView] {
//        var subviewArray = [UIView]()
//        for subview in view.subviews {
//            subviewArray.append(subview)
//        }
//        return subviewArray
//    }

//    func getSubviewsOfView(view :UIView) -> [UIView] {
//        var subviewArray = [UIView]()
//        if view.subviews.count == 0 {
//            return subviewArray
//        }
//        for subview in view.subviews {
//            subviewArray += self.getSubviewsOfView(view: subview)
//            subviewArray.append(subview)
//        }
//        return subviewArray
//    }

    func getSubviewsOfView<T: UIView>(view: UIView) -> [T] {
        var subviewArray = [T]()
        if view.subviews.count == 0 {
            return subviewArray
        }
        for subview in view.subviews {
            subviewArray += self.getSubviewsOfView(view: subview) as [T]
            if let subview = subview as? T {
                subviewArray.append(subview)
            }
        }
        return subviewArray
    }
    
    func getSubviewsOfView<T: UIView>(view: UIView) -> [T] {
        var subviewArray = [T]()
        guard view.subviews.count>0 else { return subviewArray }
        view.subviews.forEach{
            subviewArray += self.getSubviewsOfView(view: $0) as [T]
            if let subview = $0 as? T{
                subviewArray.append(subview)
            }
        }
        return subviewArray
    }
    
    func getSubviewsOfView(view: UIView) -> [CustomView] {
        var subviewArray = [CustomView]()
        for subview in view.subviews {
            subviewArray += self.getSubviewsOfView(view: subview)
            if let subview = subview as? CustomView {
                subviewArray.append(subview)
            }
        }
        return subviewArray
    }
    


}

extension UIView {
    
    func getSubviewsOfView<T : UIView>(type : T.Type, recursive: Bool = false) -> [T] {
        return self.getSubviewsInner(view: self, recursive: recursive)
    }

    private func getSubviewsInner<T : UIView>(view: UIView, recursive: Bool = false) -> [T] {
        var subviewArray = [T]()
        guard view.subviews.count>0 else { return subviewArray }
        view.subviews.forEach {
            if recursive {
                subviewArray += self.getSubviewsInner(view: $0, recursive: recursive) as [T]
            }
            if let subview = $0 as? T{
                subviewArray.append(subview)
            }
        }
        return subviewArray
    }
    
}

