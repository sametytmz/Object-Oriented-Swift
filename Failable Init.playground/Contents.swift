import UIKit

/*
    Failable Init
    Problem: Can initialization fail?
 */

//: Error Handling (Review)

enum NameError: Error {
    case noName
}

//: I recommended this method.
struct Company {
    let companyName: String
    init(name: String) throws {
        if name.isEmpty {
            throw NameError.noName
        } else {
            self.companyName = name
        }
    }
}

do {
    let company = try Company(name: "apple")
    company.companyName
} catch NameError.noName {
    print("Apple, please enter the name")
}


//: Design Failable Init
class Blog {
    let name: String
    init?(name: String) {
        if name.isEmpty {
            return nil
        } else {
            self.name = name
        }
    }
}

let sametTheDeveloper = Blog(name: "Samet the Developer")
let realSamet = sametTheDeveloper!
print(realSamet.name)


/*
    Note: I personally prefer error-handling approach since more explicit and no need to unwrap
    ... I hate wrapping or wrapping causes extra lines of code which is you know but extra lines if code
        does not really mean much... It is very tedious. It does not really add much to the programming itself.
 */


