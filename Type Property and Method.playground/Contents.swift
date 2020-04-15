import UIKit


/*
    Type Property and Method
    Problem: I'm confused by Static, Final, Class. What are those?
 */


// Structs: Static Only
struct SomeStructure {
    static var storedProperty = "Some Value"
    static var computedProperty: Int {
        get {
            return 120
        }
        set {
            print("You have set to \(newValue)")
        }
    }
    
    static func hello() {
        print("Hello")
    }
}

SomeStructure.storedProperty
SomeStructure.computedProperty
SomeStructure.hello()


/*
    Note: You can also use static func per class but there is a difference.
            So, what a difference between them?
            
            
 */

// Class: Class and Static
class GrandParent {
    static var numberOfYearsInMarriage = 30
    static func introduce() {
        print("We have been married for \(numberOfYearsInMarriage)")
    }
    
    class func introducing() {
        print("We have been married for \(numberOfYearsInMarriage)")
    }
    final func canNotOverride() {
        print("You can't change me")
    }
}

GrandParent.introduce()
GrandParent.introducing()
GrandParent().canNotOverride()

// Static can never be overridden
class Parent: GrandParent {
    // You can do that. 'Class' tag does allows you to override
    override class func introducing() {
        print("I'm married for 5 years")
    }
    
    // You can never do that. 'Static' does not allow you to override
    /*
     override static func introduce() {
         
     }
     */
    
    // You can never do that. 'Final' does not allow you to override
    /*
        override func canNorOverride() {
            print("Trying to override")
        }
     */
}


//: Applicatoin
struct BluetoothID {
    struct iPhone {
        static let iPhone4 = "4234-3232-1212-5565"
        static let iPhone5 = "8787-3223-5454-7675"
        static let iPhone6 = "1212-2323-7656-8797"
        static let iPhone7 = "4929-1293-3243-3233"
        static let iPhone8 = "3334-6544-2344-7667"
    }
    
    struct Android {
        static let galaxyS = "4234-3232-1212-5565"
        static let samsungS8 = "8787-3223-5454-7675"
        static let samsungS9 = "1212-2323-7656-8797"
        static let samsungS10 = "4929-1293-3243-3233"
        static let redmiNote8Pro = "3334-6544-2344-7667"
    }
}

BluetoothID.iPhone.iPhone4
BluetoothID.Android.redmiNote8Pro


//: Alternative
enum AirDropID: String {
    case iPhone4 = "4234-3232-1212-5565"
    case iPhone5 = "8787-3223-5454-7675"
    case iPhone6 = "1212-2323-7656-8797"
    case iPhone7 = "4929-1293-3243-3233"
    case iPhone8 = "3334-6544-2344-7667"
}

AirDropID.iPhone5.rawValue
