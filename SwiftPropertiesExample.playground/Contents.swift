//: Playground - noun: a place where people can play

import UIKit
import Foundation

struct ColorManager {

    var currentColor: UIColor {
        willSet {
            print("New color will be set.")
        }
        didSet {
            self.updateInterfaceTheme(self.currentColor)
        }
    }

    func updateInterfaceTheme(_ colorTheme: UIColor) {
        print("interface will be updated with new color")
    }
}

var colorManager = ColorManager(currentColor: UIColor.red)
colorManager.currentColor = UIColor.red

struct User {
    
    var firstName: String
    var lastName: String
    var fullName: String {
        get {
            return "\(self.firstName) \(self.lastName)"
        }
        set {
            let parts = newValue.split(separator: " ")
            self.firstName = String(parts[0])
            self.lastName = String(parts[1])
        }
    }
    
    var previousEmail: String?
    var email: String {
        willSet(newEmailStr) {
            print("new email will be set: \(newEmailStr)")
            self.previousEmail = self.email
        }
        didSet(oldEmailStr) {
            print("new email was set: \(oldEmailStr)")
        }
    }
    init(firstName: String, lastName: String, email: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
    }
}

var user1 = User(firstName: "John", lastName: "Smith", email: "john@smith.com")
print("previous email: " + (user1.previousEmail ?? "no previous email"))
user1.email = "new_john@smith.com"
print("previous email: " + (user1.previousEmail ?? "no previous email"))
print("current email: " + user1.email)




var user = User(firstName: "John", lastName: "Smith", email: "john@smith.com")
print(user.fullName) // John Smith
user.fullName = "Harry Johns"
print(user.fullName) // Harry Johns

struct SalesAccount {

    var cost: Double
    var percent: Double
    var discount: Double {
        get {
            return self.cost * self.percent
        }
    }

}

let acc = SalesAccount(cost: 250.0, percent: 0.15)
print("Dicsount: \(acc.discount)")
// Dicsount: 3750.0

struct Order {
    
    let discount = 0.15
    var count = 1
}

let order = Order(count: 10)
print("Order Count \(order.count) and order discount: \(order.discount)")
// Order Count 10 and order discount: 0.15

