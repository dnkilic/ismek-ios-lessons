//: # Control Flow

import UIKit
import Foundation



//: Eski stil for döngüsü
for index in 0..<99 {
    print("\(99-index) bottles of beer on the wall. \(99-index) bottles of beer. Take one down, pass it around ...")
}

//: For-in döngüsü
//:
//:     for item in Collection {
//:         statements to execute on each item
//:     }



//: ### Example 1 - String karakterlerini tek tek bastırmak
var demoString = "Swift enumeration is so fast!"
for character in demoString.characters {
    print(character)
}



//: ### Example 2 - Bir array elemanları üzerinde döngü ile ilermek
let intArray = [7, 21, 25, 13, 1]
var sum = 0
for value in intArray {
    sum += value
}
sum


//: ### Example 3: Bir Dictionary üzerinde for in döngüsü ile ilerlemek
var movieDict = ["Star Wars": "George Lucas", "Point Break": "Kathryn Bigelow", "When Harry Met Sally": "Rob Reiner", "The Dark Knight": "Christopher Nolan"]

for (movie, director) in movieDict {
    print("\(director) directed \(movie)")
}








//:     for item in Collection {
//:         statements to execute on each item
//:     }
//:
//:     for (key, value) in Dictionary {
//:         statement to execute on each key or value
//:     }






//: ### Example 4: Bir Dictionary üzerinde for in döngüsü ile ilerlemek
var animalGroupsDict = ["whales":"pod", "geese":"flock", "lions": "pride"]
for (animals, animalGroup) in animalGroupsDict {
    print("Many \(animals) form a \(animalGroup).")
}


//: While döngüleri

//: While loops take the form:
//:
//:    while condition {
//:        statement
//:    }




//: ### Geriye doğru dönmek
var timer = 10

while timer > 0 {
    timer -= 1
}

//: ### Geriye doğru dönmek
var beerVolume = 12.0
var sip = 0.3

while beerVolume > 0 {
    print ("Cheers!")
    beerVolume -= sip
}


//: ### Repeat-While döngüleri
//:    repeat {
//:        statement
//:    } while condition



var newTimer = 10

repeat {
   newTimer -= newTimer
} while newTimer > 0


var newBeerVolume = 12.0
var newSip = 0.4

repeat {
    print("Cheers")
    newBeerVolume -= sip
} while newBeerVolume > 0


//: ##  If-else yapısı

//: If-else statements take the form:
//:
//:    if condition {
//:        statement
//:    } else {
//:        statement
//:    }




//: ### Example 1
var hungry = true
if hungry {
    print("Let's eat!")
} else {
    print("Let's wait.")
}

//: ### Example 2
var vegetarian = false

if hungry && !vegetarian {
    print("Let's eat steak!")
} else if hungry && vegetarian {
    print("How about pumpkin curry?")
} else {
    print("nevermind")
}

//: ### Example 3
var thereIsPie = false
if hungry || thereIsPie {
    print("Let's eat.")
} else {
    print("Nevermind")
}


//: ## V. Switch yapıları

//: ### Example 1 - Burada karmaşık bir if else yapısı var
var birthYear = 1992

if birthYear == 1992 || birthYear == 1980 || birthYear == 1968 {
    print("You were born in the year of the monkey.")
} else if birthYear == 1991 || birthYear == 1979 || birthYear == 1967 {
    print("You were born in the year of the goat")
} else {
    print("You were born in the year of some other animal.")
}

//: If else yapılarını switch yapılarına çevirebiliriz

switch birthYear {
case 1992, 1980, 1968:
    print("You were born in the year of the monkey.")
case 1991,1979,1967:
    print("You were born in the year of the goat.")
default:
    print("You were born in the year of some other animal.")
}

//: Switch statements take the form:
//:
//:    switch variable {
//:    case firstValue:
//:        statement
//:    case secondValue:
//:        statement
//:    case thirdValue, fourthValue:
//:        statement
//:    default:
//:        statement 
//:    }

//: ### Example 2: Switch yapısının Range data tipi ile kullanılımı
var color = ""
var wavelength = 568

switch wavelength {
case 380...450:
    color = "violet"
case 451...495:
    color = "blue"
case 496...570:
    color = "green"
case 571...590:
    color = "yellow"
case 591...620:
    color = "orange"
case 621...750:
    color = "red"
default:
    color = "not visible"
}
//: ### Example 3: Bir örnek daha
let temperature = 55
switch temperature {
case 10...55:
    print("Brrr")
case 55...78:
    print("Comfortable")
case 78...95:
    print("Sweaty")
default:
    print("Very uncomfortable")
}
