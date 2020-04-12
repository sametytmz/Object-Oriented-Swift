import UIKit

/*
   ****** Object Oriented Swift ******
            Convenience Init
    Problem: I'm lazy. Can we initialize quickly?
 
 */

class Human {
    var name: String
    init(name: String) {
        self.name = name
    }
    
    // Convenience init initializes the designated init method
    convenience init() {
        self.init(name: "Samet the Developer")
    }
}

let person = Human(name: "Samet")
let newPerson = Human()
newPerson.name


//: Real Life Situation
let randomColor = UIColor(red: 80/255, green: 80/255, blue: 85/255, alpha: 1)
extension UIColor {
    convenience init(r: CGFloat, g: CGFloat, b: CGFloat) {
        self.init(red: r/255, green: g/255, blue: b/255, alpha: 1)
    }
}

let  myFavoriteColor = UIColor(r: 80, g: 85, b: 255)
 

/*
    Application
    1- Useful for quick initialization for open source projects
    2- Custom convenience like UIKit
 */

// you may provide multiple convenience init methods so that their lives become easier.

