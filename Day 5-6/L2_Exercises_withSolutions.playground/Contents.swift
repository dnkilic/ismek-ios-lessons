import UIKit

//: # Lesson 2 Exercises
//: ## Optionals
//: ### Exercise 1
//: 1a)
var moviesDict:Dictionary = [ "Star Wars":"George Lucas", "Point Break":"Kathryn Bigelow"]
var movie = "Point Break"
var director = moviesDict[movie]
//: 1b)
// Solution
//if let director = moviesDict[movie] {
//    print ("\(director) directed \(movie)")
//}
//else {
//    print("No director found")
//}
//: ### Exercise 2
// Solution
//class LoginViewController: UIViewController {
//    var nameTextfield:UITextField!
//}
//: ### Exercise 3 
//: The Swift Int type has an initializer that takes a string as a parameter and returns an optional of type Int?.
//:
//: 3a)
// Solution
//if let number = number {
//    print("\(number) is the magic number.")
//} else {
//    print("No magic numbers here.")
//}
//: 3b)
// Solution
//numericalString = "three"
//number = Int(numericalString)
//if let number = number {
//    print("\(number) is the magic number.")
//} else {
//    print("No magic numbers here.")
//}
//: ### Exercise 4
//if let tabBar = viewController.tabBarController?.tabBar {
//    print("Here's the tab bar.")
//} else {
//    print("No tab bar controller found.")
//}

//: ### Exercise 5
//: 5a)
var paintingDict:Dictionary = [ "Guernica":"Picasso", "Mona Lisa": "da Vinci", "No. 5": "Pollock"]
var painting = "Mona Lisa"
var artist = paintingDict[painting]

//: 5b)
// Solution
//if let artist = paintingDict[painting] {
//    print ("\(artist) painted \(painting)")
//}
//else {
//    print("No artist found")
//}
//: ### Exercise 6
// Solution
//cancelButton.width = 50
//: ### Exercise 7
// Solution
//if let parentVC = childViewController.parent {
//    print("Here's the parent view controller")
//} else {
//    print("No parents, let's party!")
//}


