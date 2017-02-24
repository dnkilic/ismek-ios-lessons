//: # Strings

import UIKit
import Foundation

//: ## String tanımlamak
let myFirstString = "mo 💰"
let mySecondString = "mo problems"

//: ## String birleştirmek
//let theTruth = myFirstString + ", " + mySecondString

let theTruth = "💰 can't buy me 💖."

let theBaseballTeamInAtlanta = "Atlanta Braves"
var jamesFavoriteBaseballTeam = "Atlanta Braves"

jamesFavoriteBaseballTeam.characters.count

var nWithTilde = "\u{006E}\u{0303}"
nWithTilde.unicodeScalars.count
nWithTilde.characters.count

//: ## Emoji karakterler
let similarTruth = "💰can't buy me 💖"

// Boş bir String tanımlamak
var characterPoorString = ""

// Boş String tanımlamanın bir başka yolu
let potentialRichString = String()
characterPoorString.characters.count

//: ## String interpolation

//: ### String interpolation kullanarak her türlü veriyi String içerisine yerleştirebiliriz.

var doggyDiet = "Çomar ayda 10 kilo et yiyiyor."
//: ### String with variables
var dogName = "Candost"
var candostPic = UIImage(named:"SpringerdoodleFerris.jpg")!
doggyDiet = "\(dogName) ayda 10 kilo et yiyiyor"

//: ### String with variables and expression. Soru işareti yerine kg değerini yerleştiriniz.
var lbsPerDay = 0.75
var daysPerMonth:Double = 30.0
doggyDiet = "\(dogName) ayda \(lbsPerDay * daysPerMonth)" + " kg et yiyor"

var frankiePic = UIImage(named:"frankie.jpeg")!
lbsPerDay = 0.25
dogName = "Lil Frankie"
doggyDiet = "\(dogName) ayda \(lbsPerDay * daysPerMonth) kg et yiyor"
//: ## A String isn't just a String



//: ### Bir String'in elemanlarına .characters yazarak ulaşabiliriz.
var password = "Meet me in St. Louis"
for character in password.characters {
        print(character)
   }

//: ### String primitive bir Type değildir! NSString'e ait metodları çağırabilir.
let newPassword = password.replacingOccurrences(of: "e", with: "ö")

