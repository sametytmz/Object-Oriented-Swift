import UIKit


/*
    Two Phase Initilazations
    Problem: ow can one init init the other?
 */


struct NuclearRocket {
    var meters: Double
    var liters: Double
    
    // Init for 🇹🇷
    init(meters: Double, liters: Double) {
        self.meters = meters
        self.liters = liters
    }
    
    // Init for 🇺🇸
    init(ft: Double, gallon: Double) {
        let convertedMeters = ft / 3.28
        let convertedLiters = gallon / 3.78
        self.init(meters: convertedMeters, liters: convertedLiters)
    }
}

// 🇹🇷 Scientist
var rocket = NuclearRocket(meters: 20, liters: 20)
rocket.liters

// 🇺🇸 Scientist
var newRocket = NuclearRocket(ft: 300, gallon: 2)
newRocket.liters
newRocket.meters

// *****
class NuclearRocketC {
    var meters: Double
    var liters: Double
    
    // Init for 🇹🇷
    init(meters: Double, liters: Double) {
        self.meters = meters
        self.liters = liters
    }
    
    // Init for 🇺🇸
    //CONVENIENCE
    convenience init(ft: Double, gallon: Double) {
        let convertedMeters = ft / 3.28
        let convertedLiters = gallon / 3.78
        self.init(meters: convertedMeters, liters: convertedLiters)
    }
}

/*
    Note: If you want to use struct and you need to create two init method like up, you don't have to use convenience.
            But for class you have to use convenience tag.
 */
