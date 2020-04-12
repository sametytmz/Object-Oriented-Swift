import UIKit


/*
 
    Computed Property
    Problem: Do we have to make functions all the time to calculate something?
 
 */

func getDiameter(radius: Double) -> Double {
    return radius * 2
}

func getRadius(diameter: Double) -> Double {
    return diameter / 2
}

getDiameter(radius: 10)
getRadius(diameter: 200)
getRadius(diameter: 700)


/*
        Introducing Computed Property
    Note: computed = calculated
 
    Gettable Property
    Note: Create a variable that only can be read. It can not be modified
 */


class NumberClass {
    // First form
    var readableNumber: Double {
        get {
            return 666
        }
    }
    
    // Second form
    var newNumber: Double {
        return 777
    }
}

NumberClass().readableNumber
NumberClass().newNumber


//: Settable Property
var radius: Double = 10

var diameter: Double {
    get {
        return radius * 2
    }
    
    set {
        radius = newValue
    }
}

diameter = 30
diameter

diameter = 50
diameter

//: Finding Area
var side: Double = 100
var area: Double {
    get {
        return side * side
    }
    
    set(newArea) {
        side = sqrt(newArea)
    }
}

area = 625
side


/*
    Applications
    1- Grabbing and storing data the server // unchangeable
    2- Propagating realtionships between properties
    3- Preventing other from manipulationg your code
 */
