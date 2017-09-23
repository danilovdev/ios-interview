//
//  AppSettings.swift
//  NSCodingExample
//
//  Created by Alexey Danilov on 23/09/2017.
//  Copyright © 2017 DanilovDev. All rights reserved.
//

import Foundation
import UIKit

class AppSettings: NSObject, NSCoding {
    
    var themeColor: UIColor
    var userName: String
    var isActivated: Bool
    var lastActivityDate: Date
    var count: Int
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(self.themeColor, forKey: "themeColor")
        aCoder.encode(self.userName, forKey: "userName")
        aCoder.encode(self.isActivated, forKey: "isActivated")
        aCoder.encode(self.lastActivityDate, forKey: "lastActivityDate")
        aCoder.encode(self.count, forKey: "count")
    }
    
    required convenience init?(coder aDecoder: NSCoder) {
        
        guard let themeColor = aDecoder.decodeObject(forKey: "themeColor") as? UIColor,
            let userName = aDecoder.decodeObject(forKey: "userName") as? String,
            let lastActivityDate = aDecoder.decodeObject(forKey: "lastActivityDate") as? Date else {
                return nil
        }
        
        self.init(themeColor: themeColor,
                  userName: userName,
                  isActivated: aDecoder.decodeBool(forKey: "isActivated"),
                  lastActivityDate: lastActivityDate,
                  count: aDecoder.decodeInteger(forKey: "count"))
    }
    
    init(themeColor: UIColor, userName: String, isActivated: Bool, lastActivityDate: Date, count: Int) {
        self.themeColor = themeColor
        self.userName = userName
        self.lastActivityDate = lastActivityDate
        self.isActivated = isActivated
        self.count = count
    }
    
}
