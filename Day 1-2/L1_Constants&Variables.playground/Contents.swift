//: # Constants and Variables

import UIKit

//: ### Example 1
//: ### Eğer bir değerin sabit kalacağını öngörüyorsan let olarak tanımla!
let encouragement = "You can do it!"
//: ### Eğer bir değerin değişebileceğini düşünüyorsan var olarak tanımla!
var personalizedEncouragement = "You can do it, Lauren!"
personalizedEncouragement = personalizedEncouragement.replacingOccurrences(of: "Lauren", with: "Cameron")
//: ### Example 2a
let birthYear = 2008
var currentYear = 2015
var age = currentYear - birthYear
//: ### Example 2b - yukarıdaki age değişen birşey mi?

//: ### Example 3
let birthweight = "6 lbs 7 ounces"
var currentWeight = "22lbs"
var chubbyBaby = UIImage(named:"chubby-baby-picture.jpg")!

//: ### Two ways of being immutable - #1 Assignment
var goat = UIImage(named:"Chinese-New-Year-3.jpg")!
let yearsOfTheGoat = [1967, 1979, 1991, 2003, 2015]
let yearsOfTheSheep = [1967, 1979, 1991, 2003, 2015]
yearsOfTheGoat = yearsOfTheSheep
//: ### Two ways of being immutable - #2 Value alteration
yearsOfTheGoat.append(2027)


