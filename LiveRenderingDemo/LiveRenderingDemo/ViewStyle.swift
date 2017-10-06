//
//  ViewStyle.swift
//  LiveRenderingDemo
//
//  Created by Alexey Danilov on 06/10/2017.
//  Copyright © 2017 DanilovDev. All rights reserved.
//

import Foundation
import UIKit

enum ViewStyle: String {
    
    case Rounded = "rounded"
    case Shadowed = "shadowed"
    
    var maskToBounds: Bool {
        switch self {
        case .Rounded: return true
        case .Shadowed: return false
        }
    }
    
    var cornerRadius: CGFloat {
        return 6
    }
    
    var borderWidth: CGFloat {
        return 2
    }
    
    var borderColor: UIColor {
        return UIColor.black
    }
    
    var shadowColor: UIColor{
        return UIColor.black
    }
    
    var shadowRadius: CGFloat {
        return 5.0
    }
    
    var shadowOffset: CGSize {
        return CGSize(width: 5.0, height: 5.0)
    }
    
    var shadowOpacity: Float {
        return 1.0
    }
}
