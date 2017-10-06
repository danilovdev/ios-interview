//
//  UIViewExtensions.swift
//  LiveRenderingDemo
//
//  Created by Alexey Danilov on 06/10/2017.
//  Copyright © 2017 DanilovDev. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    @IBInspectable
    var borderColor: UIColor? {
        set {
            self.layer.borderColor = newValue?.cgColor
        }
        get {
            if let color = self.layer.borderColor {
                return UIColor(cgColor: color)
            }
            return nil
        }
    }
    
    @IBInspectable
    var borderWidth: CGFloat {
        set {
            self.layer.borderWidth = newValue
        }
        get {
            return self.layer.borderWidth
        }
    }
    
    @IBInspectable
    var cornerRadius: CGFloat {
        set {
            self.layer.cornerRadius = newValue
        }
        get {
            return self.layer.cornerRadius
        }
    }
    
    @IBInspectable
    var maskToBounds: Bool {
        set {
            self.layer.masksToBounds = newValue
        }
        get {
            return self.layer.masksToBounds
        }
    }
    
    @IBInspectable
    var shadowColor: UIColor? {
        set {
            self.layer.shadowColor = newValue?.cgColor
        }
        get {
            if let color = self.layer.shadowColor {
                return UIColor(cgColor: color)
            }
            return nil
        }
    }
    
    @IBInspectable
    var shadowRadius: CGFloat {
        set {
            self.layer.shadowRadius = newValue
        }
        get {
            return self.layer.shadowRadius
        }
    }
    
    @IBInspectable
    var shadowOffset: CGSize {
        set {
            self.layer.shadowOffset = newValue
        }
        get {
            return self.layer.shadowOffset
        }
    }
    
    @IBInspectable
    var shadowOpacity: Float {
        set {
            self.layer.shadowOpacity = newValue
        }
        get {
            return self.layer.shadowOpacity
        }
    }
    
    @IBInspectable
    var viewStyle: String? {
        set {
            self.configureWithStyle(viewStyle: newValue)
        }
        get {
            return nil
        }
    }
    
    private func configureWithStyle(viewStyle: String?) {
        if let viewStyleStr = viewStyle {
            if let styleEnum = ViewStyle(rawValue: viewStyleStr) {
                self.borderColor = styleEnum.borderColor
                self.borderWidth = styleEnum.borderWidth
                self.cornerRadius = styleEnum.cornerRadius
                self.maskToBounds = styleEnum.maskToBounds
                self.shadowOpacity = styleEnum.shadowOpacity
                self.shadowOffset = styleEnum.shadowOffset
                self.shadowRadius = styleEnum.shadowRadius
                self.shadowColor = styleEnum.shadowColor
            }
        }
    }
    
}
