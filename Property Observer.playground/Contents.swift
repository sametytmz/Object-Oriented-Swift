import UIKit

/*
        Property Observer
    Problem: How can I add observer/tracker to a property?
 */


// WillSet is called just before the value is stored
// DidSet is called immediately after the new value has been stored
var myGrade: Int = 80 {
    willSet (newGrade){
        print("About to change your grade to: \(newGrade)")
    }
    didSet(oldGrade) {
        print("Hey something happened for DidSet: \(oldGrade)")
    }
}

myGrade = 100

//: Step Counter

var totalSteps: Int = 20 {
    willSet (newTotalSteps) {
        print("About to set totalsteps to \(newTotalSteps)")
    }
    didSet (oldTotalSteps) {
        if totalSteps > oldTotalSteps {
            print("Added \(totalSteps - oldTotalSteps) steps")
            // Backgorund color
            //Animation
            //Pop Up
            //All kinds of stuff
        }
    }
}

totalSteps = 50
totalSteps = 45
totalSteps = 85


// Application
var isUserLoggedIn: Bool = false {
    willSet (newValue) {
        print("The user has tried something")
    }
    didSet {
        if isUserLoggedIn {
            print("The user has switched from \(oldValue) to \(isUserLoggedIn)")
        }
    }
}

isUserLoggedIn = true
isUserLoggedIn = false
isUserLoggedIn = true


/*
    Similarity with Computed Property
    1- Always recalculated
 
    What makes Property Observers different
    1- There is a default value and it is observed rather than calculated.
    2- WillSet and DidSet will not get called when you initialize it.
 
 */
