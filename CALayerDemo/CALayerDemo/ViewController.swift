//
//  ViewController.swift
//  CALayerDemo
//
//  Created by Alexey Danilov on 23/09/2017.
//  Copyright © 2017 DanilovDev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var customView: UIView!
    
    @IBOutlet var customViewWithContent: UIView!
    
     @IBOutlet var customViewWithBackground: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.configureCustomView()
        self.configureCustomViewWithImageContent()
        self.configureCustomViewWithBackground()
        
    }

    func configureCustomView() {
        // Custom View
        // make rounded corners
        self.customView.layer.cornerRadius = 16
        
        // add borders
        self.customView.layer.borderColor = UIColor.black.cgColor
        self.customView.layer.borderWidth = 3
        
        // add shadows
        self.customView.layer.shadowOffset = CGSize(width: 6, height: 6)
        self.customView.layer.shadowOpacity = 0.8
        self.customView.layer.shadowRadius = 6
        self.customView.layer.shadowColor = UIColor.black.cgColor
        
    }

    func configureCustomViewWithImageContent() {
        // Custom View with Image Content
        
        // make rounded corners
        self.customViewWithContent.layer.cornerRadius = 16
        
        // add borders
        self.customView.layer.borderColor = UIColor.black.cgColor
        self.customView.layer.borderWidth = 3
        
        // add image content
        self.customViewWithContent.layer.contents = UIImage(named: "cats-eyes")?.cgImage
        self.customViewWithContent.layer.contentsGravity = kCAGravityResizeAspectFill
        self.customViewWithContent.layer.masksToBounds = true
        
        // add shadows
        self.customView.layer.shadowOffset = CGSize(width: 6, height: 6)
        self.customView.layer.shadowOpacity = 0.8
        self.customView.layer.shadowRadius = 6
        self.customView.layer.shadowColor = UIColor.black.cgColor
    }
    
    func configureCustomViewWithBackground() {
        // Custom view with background
        // make rounded corners
        self.customViewWithBackground.layer.cornerRadius = 16
        
        // add borders
        self.customViewWithBackground.layer.borderColor = UIColor.black.cgColor
        self.customViewWithBackground.layer.borderWidth = 3
        
        // add shadows
        self.customViewWithBackground.layer.shadowOffset = CGSize(width: 6, height: 6)
        self.customViewWithBackground.layer.shadowOpacity = 0.8
        self.customViewWithBackground.layer.shadowRadius = 6
        self.customViewWithBackground.layer.shadowColor = UIColor.black.cgColor
        
        // opacity background
        self.customViewWithBackground.layer.backgroundColor = UIColor.red.cgColor
        self.customViewWithBackground.layer.opacity = 0.5
    }

}

