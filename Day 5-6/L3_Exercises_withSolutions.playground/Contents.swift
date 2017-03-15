//: # Lesson 3 Exercises - Collections
import UIKit

//: ## Array initialization

//: ### Exercise 1
//: 1a)
// Solution
var cuteAnimals = [CuddlyCreature]()

//: 1b)
var boolArray = [true, false, false, true, true]

//: ## Array operations: count, insert, append, remove, retrieveWithSubscript

//: ### Exercise 2
var spaniels = ["American Cocker", "Cavalier King Charles", "English Springer", "French", "Irish Water","Papillon", "Picardy","Russian", "French", "Welsh Springer"]
// Solution
print(spaniels.count)

//: ### Exercise 3
var colors = ["red", "orange", "yellow", "green", "blue", "violet"]
// Solution
colors.insert("indigo", at: 5)

//: ### Exercise 4
// Solution
spaniels.insert("English Cocker", at: 2)

//: ### Exercise 5
var olympicHosts = ["London", "Beijing","Athens", "Sydney", "Atlanta"]
// Solution
olympicHosts.append("Barcelona")

//: ### Exercise 6
var admitted = ["Jennifer", "Vijay", "James"]
var waitingList = ["Lyla", "Daniel", "Isabel", "Eric"]
// Solution
var name = waitingList.remove(at: 0)
admitted.append(name)

//: ### Exercise 7
// Solution
print("second: \(admitted[1]), third: \(admitted[2])")
//: ## Dictionary initialization

//: ### Exercise 8
// Solution
var dictionary = [String: Bool]()

//: b)
// Solution
var polarizingFoods = ["Anchovies":true, "Coconut":true, "Cilantro":true, "Liver": false]
//: ## Dictionary operations: count, insert, remove, update, retrieve with subscript

//: ### Exercise 9
var presidentialPetsDict = ["Barack Obama":"Bo", "Bill Clinton": "Socks", "George Bush": "Miss Beazley", "Ronald Reagan": "Lucky"]
//desired output
// ["Barack Obama":"Bo", "George Bush": "Miss Beazley","Bill Clinton": "Socks", "George H. W. Bush": "Millie", "Ronald Reagan": "Lucky"]
// Solution
presidentialPetsDict["George H. W. Bush"] = "Millie"
print(presidentialPetsDict)

//: ### Exercise 10
// Solution
var oldValue = presidentialPetsDict.removeValue(forKey: "George Bush")
presidentialPetsDict["George W. Bush"] = oldValue
//: ### Exercise 11
//: We've initialized a new dictionary of presidentialDogs with the entries from presidentialPets. Update the entry for Bill Clinton by replacing "Socks" the cat with "Buddy" the dog.
var presidentialDogs = presidentialPetsDict
// Solution
presidentialDogs["Bill Clinton"] = "Buddy"
//: ### Exercise 12
//print("Michele Obama walks \() every morning.")

// Solution
if let dog = presidentialDogs["Barack Obama"] {
    print("Michele Obama walks \(dog) every morning.")
} else {
    print("No value found")
}
//: ### Exercise 13
var studioAlbums = ["Led Zeppelin":1969, "Led Zeppelin II": 1969, "Led Zeppelin III": 1970, "Led Zeppelin IV": 1971, "Houses of the Holy":1973, "Physical Graffiti": 1975, "Presence":1976, "In Through the Out Door":1979, "Coda":1982]

// Solution
studioAlbums.count






