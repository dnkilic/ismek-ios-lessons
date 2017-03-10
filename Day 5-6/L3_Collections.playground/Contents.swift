//: # Collections

import UIKit
import Foundation

// Array - ordered list of items

// Dictionary - collection of key-value pairs(ikilileri)

// Set - unordered list of distinct(ayrık) values

//: ### Initializing Arrays
// Bu yöntem boş bir array tanımalamızı sağlar
var numbers = Array<Double>()

// Ancak sıklıkla bu yöntemi göreceğiz
var moreNumbers = [Double]()
moreNumbers = [85.0, 90.0, 95.0]

// Bu yöntem ise en pratik yöntem
let differentNumbers = [97.5, 98.5, 99.0]

let zozi = [1,3,4]

// Array concatenate etmek Swift dilinde çok kolay!
moreNumbers = moreNumbers + differentNumbers




// Bir array her tipte veri tutabilir, ilk derste tanımladığımız classları hatırlayın.
var circuit = [livingRoomSwitch, kitchenSwitch, bathroomSwitch]



//: ### Şimdi array metodlarına bakalım: append, insert, remove, count, retrieve
var roadTripMusic = ["Neil Young","Kendrick Lamar","Flo Rida", "Nirvana"]
roadTripMusic.append("Rae Sremmurd")
roadTripMusic.insert("Dej Loaf", at: 2)
roadTripMusic.remove(at: 3)
roadTripMusic.insert("Keith Urban", at: 3)
roadTripMusic.count


//: ### Array içerisindeki elemana ulaşmak
let musician = roadTripMusic[2]



//: ### Dictionary initialization
// Burada key String, value String tipinde boş bir Dictionary tanımlanmış
var groupsDict = [String:String]()

// burada ise aynı tipte 3 elemanlı bir Dictionary tanımlanmış
var animalGroupsDict = ["whales":"pod", "geese":"flock", "lions": "pride"]




// Daha önce sıklıkla kullandığımız Range'leri kullanarak bir Dictionary tanımlayalım
var averageLifeSpanDict = [String:CountableRange<Int>]()
var lifeSpanDict = ["African Grey Parrot": 50...70, "Tiger Salamander": 12...15, "Bottlenose Dolphin": 20...30]

var students = ["ahmet":18, "ayşe":19, "ali": 20]

//: ### Dictionary metodları: insert, remove, count, update, retrieve
// Adding items to a dictionary
students["murat"] = 45
students["zehra"] = 80

// The count method is available to all collections.
students.count
print(students)





// Removing items from a dictionary
students["zehra"] = nil
students





// Updating a value
students["murat"] = 46
var group = students.updateValue(120, forKey: "ayşe")
type(of: group)

students.updateValue(24, forKey:"ali")
print(students)



//Belli bir key'e göre değer almak
let age = students["ayşe"]
type(of: age)
//: age değeri optional olduğuna göre unwrap etmeden kullanamayız
//:
if let age = students["ayşe"] {
    print("Ayşe \(age) yaşındadır.")
} else {
    print("No value found for that key.")
}


// Dictionary'de aranan key bulunamazsa?
if let mico = students["michael"] {
    print("Mico \(mico) yaşındadır.")
} else {
    print("No value found for that key.")
}


//: ## Sets
var cutlery: Set = ["fork", "knife", "spoon"]
var flowers:Set<Character> = ["🌷","🌹","🌸"]
var utensils = Set<String>()
var trees = Set<Character>()




//: Set metodları: Insert, Remove, Count
trees.insert("🌲")
trees.insert("🌳")
trees.insert("🌵")
trees.insert("🌵")
trees.insert("🌵")

trees.remove("🌵")
trees.count

