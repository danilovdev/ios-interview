//
//  vehicle.swift
//  GoodCodeDemo
//
//  Created by Alexey Danilov on 12/10/2017.
//  Copyright © 2017 DanilovDev. All rights reserved.
//

import Foundation

class vehicle {
    
    var title: String!
    
    var type: String!
    
    var speed: Int!
    
    init(title: String, type: String, speed: Int) {
        self.title = title
        self.type = type
        self.speed = speed
    }
}
