//
//  ViewController.swift
//  BarButtonItemAnimationDemo
//
//  Created by Alexey Danilov on 22/10/2017.
//  Copyright © 2017 DanilovDev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var favorite: Bool = false
    
    var settingsBarButton: UIBarButtonItem?
    
    var favoriteBarButton: UIBarButtonItem?
    
    let settingsImage = UIImage(named: "ic_settings_48pt")?.withRenderingMode(.alwaysTemplate)
    let favoriteBorderImage = UIImage(named: "ic_favorite_border_48pt")?.withRenderingMode(.alwaysTemplate)
    let favoriteFullImage = UIImage(named: "ic_favorite_48pt")?.withRenderingMode(.alwaysTemplate)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let settingsButton = UIButton(type: .system)
        settingsButton.tintColor = .black
        settingsButton.setImage(self.settingsImage, for: .normal)
        settingsButton.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        settingsButton.addTarget(self, action: #selector(settingsButtonTapped), for: .touchUpInside)
        self.settingsBarButton = UIBarButtonItem(customView: settingsButton)
        self.navigationItem.setLeftBarButton(settingsBarButton, animated: false)
        
        let favoriteButton = UIButton(type: .system)
        favoriteButton.tintColor = .black
        favoriteButton.setImage(self.favoriteBorderImage, for: .normal)
        favoriteButton.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        favoriteButton.addTarget(self, action: #selector(favoriteButtonTapped), for: .touchUpInside)
        self.favoriteBarButton = UIBarButtonItem(customView: favoriteButton)
        self.navigationItem.setRightBarButton(favoriteBarButton, animated: false)
    }
    
    @objc func settingsButtonTapped(_ sender: UIButton) {
        self.settingsBarButton?.customView?.transform =
            CGAffineTransform(rotationAngle: CGFloat(CGFloat.pi * -3/4))
        UIView.animate(withDuration: 0.8) {
            self.settingsBarButton?.customView?.transform = .identity
        }
    }
    
    @objc func favoriteButtonTapped(_ sender: UIButton) {
        self.favoriteBarButton?.customView?.transform = CGAffineTransform(scaleX: 0, y: 0)
        UIView.animate(withDuration: 0.5,
                       delay: 0.0,
                       usingSpringWithDamping: 0.6,
                       initialSpringVelocity: 10,
                       options: .curveEaseInOut,
                       animations: {
                        self.favorite = !self.favorite
                        let image = self.favorite ? self.favoriteFullImage : self.favoriteBorderImage
                        if let button = self.favoriteBarButton?.customView as? UIButton {
                            button.setImage(image, for: .normal)
                        }
                        self.favoriteBarButton?.customView?.transform = .identity
        }, completion: nil)
    }

}

