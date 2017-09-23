//
//  ViewController.swift
//  NSCodingExample
//
//  Created by Alexey Danilov on 23/09/2017.
//  Copyright © 2017 DanilovDev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var appSettings: AppSettings!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let userDafaults = UserDefaults.standard
        if let data = userDafaults.object(forKey: "appSettings") as? Data {
            self.appSettings = NSKeyedUnarchiver.unarchiveObject(with: data) as! AppSettings
        } else {
            self.appSettings = AppSettings(themeColor: UIColor.red,
                                           userName: "John",
                                           isActivated: true,
                                           lastActivityDate: Date(),
                                           count: 22)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func saveSettingsButtonTapped(sender: UIButton) {
        let data = NSKeyedArchiver.archivedData(withRootObject: self.appSettings)
        let userDefaults = UserDefaults.standard
        userDefaults.set(data, forKey: "appSettings")
    }

}

