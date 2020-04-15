import UIKit


/*
    Singleton Pattern
    Note: A singleton is an object which is instantiated exactly once.
 */

class AccountManager {
    static let sharedInstance = AccountManager()
    
    var userInfo = (Id: "sametthedev", Password: 157099)
    func network() {
        // get everything
    }
    
    private init () {
        print("I'm created")
    }
}

// ViewController One
AccountManager.sharedInstance.userInfo.Id


// ViewController Two
AccountManager.sharedInstance.userInfo.Id = "sametYatmaz"


// ViewController Three
AccountManager.sharedInstance.userInfo.Id



//: Example 'UIApplication', 'UserDefault', 'NSNotification'.
