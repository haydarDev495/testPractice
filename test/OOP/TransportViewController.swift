//
//  TransportViewController.swift
//  test
//
//  Created by Haydar Bekmuradov on 15.05.22.
//

import UIKit

class TransportViewController {
    var name: String
    var countWheel: Int
    
    init(name: String, countWheel:Int) {
        self.name = name
        self.countWheel = countWheel
    }
    
    func drive() {
        print("Drive")
    }
    
    func signal() {
        print("honk")
    }
}

class Car: TransportViewController {
    var color: String
    init(name: String, countWheel: Int, color: String) {
        self.color = color
        super.init(name: name, countWheel: countWheel)
    }
    
    override func drive() {
        super.drive()
        print("Drive Car")
    }
    
    override func signal() {
        super.signal()
        print("Honk Car")
    }
}

class Bike: TransportViewController {
    var speed: Int
    
    init(name: String, countWheel: Int, speed: Int) {
        self.speed = speed
        super.init(name: name, countWheel: countWheel)
    }
    override func drive() {
        super.drive()
        print("Drive Bike")
    }
    
    override func signal() {
        super.signal()
        print("Honk Bike")
    }
}

