import UIKit


/*
    Override Method, Init, Property
    Problem: Super... Super.init
 */


class MyViewController: UIViewController {
    //viewDidLoad() is built-in and it runs automatically
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Hi guys")
    }
}

class Vehicle {
    var description: String {
        return "Hello, I'm moving at 30km/hr"
    }
    
    func warning() {
        print("Be careful, I'm going pretty fast")
    }
}

//: Override Method and Property

class ToyCar: Vehicle {
    override var description: String {
        //return "Hello. I'm moving"
        return "/\(super.description)/ Hey. but I'm small though"
    }
    override func warning() {
        print("You should be careful, I am going to run very fast")
        super.warning() // this method calls original func so first function
    }
}

print(ToyCar().warning())
print(ToyCar().description)


//: super.init
class Human {
    var origin: String
    init(enterOrigin: String) {
        origin = enterOrigin
    }
}

Human(enterOrigin: "Republic of Turkey")

class Turkey: Human {
    var city: String
    init(enterCity: String) {
        city = enterCity
        super.init(enterOrigin: "Republic of Turkey")
    }
    
    init(enterCity: String, enterOrigin: String) {
        city = enterCity
        super.init(enterOrigin: enterOrigin)
    }
}

let country = Turkey(enterCity: "Istanbul")
print(country.city)
print(country.origin)

let newCountry = Turkey(enterCity: "Ankara", enterOrigin: "Republic of Turkey")
print(newCountry.city)
print(newCountry.origin)


//: Override Init
class Tesla {
    var numberOfWheels: Int
    
    init(enterWheelNumber: Int) {
        numberOfWheels = enterWheelNumber
    }
}

class ModelS: Tesla {
    override init(enterWheelNumber: Int) {
        super.init(enterWheelNumber: enterWheelNumber)
        print("Wow, this is a beautiful car")
    }
}

let futureCar = ModelS(enterWheelNumber: 50)
futureCar.numberOfWheels
