//
//  ViewController.swift
//  ViewFrameBounds
//
//  Created by Alexey Danilov on 06/10/2017.
//  Copyright © 2017 DanilovDev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var customView: UIView!
    
    @IBOutlet weak var frameRectLabel: UILabel!
    
    @IBOutlet weak var frameOriginLabel: UILabel!
    
    @IBOutlet weak var boundsRectLabel: UILabel!
    
    @IBOutlet weak var boundsOriginLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(self.customView.frame)
        print(self.customView.bounds)
        print(self.customView.frame.origin)
        print(self.customView.bounds.origin)
        
        self.frameRectLabel.text = "Frame Rect: \(self.customView.frame)"
        self.frameOriginLabel.text = "Frame Origin: \(self.customView.frame.origin)"
        self.boundsRectLabel.text = "Bounds Rect: \(self.customView.bounds)"
        self.boundsOriginLabel.text = "Bounds Origin: \(self.customView.bounds.origin)"
        
    }

}

