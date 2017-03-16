//: # Lesson 4 Exercises - Control Flow

import UIKit

//: ## Fast enumeration with for-in
//: ### Exercise 1
//: Aşağıdaki array içerisinde yer alan bütün elemanlar için konsola "title + with Dnkilic" bastırınız , e.g "Point Break with Dnkilic!"
var movieTitleArray = ["Point Break", "The Dark Knight", "Star Wars", "When Harry Met Sally"]

//: ### Exercise 2
//: Bu yıl kiralar 20% oranında arttı. Bir for loop'u kullanarak artış oranlarını aşağıdaki array'e yansıtınız.  Yeni değerleri newMountainViewRent isminde bir arrayde tutunuz.
var oldMountainViewRent:[Double] = [2150, 1775, 2221, 1261, 1325, 2110, 1870]
var newMountainViewRent = [Double]()

//: ### Exercise 3
//: Value olarak true içeren bütün dictionary elemanları için konsola "<food>, yum!" bastırınız. Value olarak false içeren bütün dictionary elemanları için konsola "<food>, yuck! bastırınız"
var polarizingFoods = ["Anchovies":true, "Coconut":true, "Cilantro":true, "Liver": false]

//: ### Exercise 4
//: The Oakland telefon kodu 415'ten 510'a çevrildi. Aşağıdaki Dictionary içerisinde 415 değerlerinin tamamını 510'a çeviriniz.
var rapperPhoneNumbers = ["Azealia Banks":"(212)548-8777", "Boots Riley":"(415)755-9887", "MC Hammer":"(415)533-9899", "Missy Elliot":"(757)488-5552", "Shock G":"(415)499-7676", "Sir Mix-a-lot":"(206)123-4567", "Snoop Dogg":"(213)760-6664"]

//: ## Switch Statements
//: Aşağıdaki if else yapısını switch yapısına çeviriniz.
enum Sport {
    case baseball, basketball, football, hockey, soccer
}

var sport = Sport.baseball

if sport == .baseball {
    print("Go A's!")
} else if sport == .basketball {
    print("Go Warriors!")
} else if sport == .football {
    print( "Go Raiders!")
} else if sport == .hockey {
    print("Go Sharks!")
} else if sport == .soccer {
    print("Go Earthquakes!")
}

//: ### Exercise 6
//: Aşağıdaki if else yapısını switch yapısına çeviriniz.
enum roshamboMove {
    case rock, paper, scissors
}

var myMove = roshamboMove.scissors
var yourMove = roshamboMove.scissors

var resultsMessage = ""

if myMove == .rock && yourMove == .paper || myMove == .paper && yourMove == .rock {
    resultsMessage = "Paper covers Rock."
} else if myMove == yourMove {
    resultsMessage = "It's a tie!"
} else if myMove == .rock && yourMove == .scissors || myMove == .scissors && yourMove == .rock {
    resultsMessage = "Rock crushes Scissors. "
} else if myMove == .paper && yourMove == .scissors || myMove == .scissors && yourMove == .paper {
    resultsMessage = "Scissors cut Paper."
}

//: ### Exercise 7
//: Aşağıdaki if else yapısını switch yapısına çeviriniz.
var score = 97
var letterGrade = ""

if 90...100 ~= score {
    letterGrade = "A"
} else if 80...89 ~= score {
    letterGrade = "B"
} else if 70...79 ~= score {
    letterGrade = "C"
} else if 60...69 ~= score {
    letterGrade = "D"
} else {
    letterGrade = "Incomplete"
}

//: ### Exercise 8
//: Aşağıdaki if else yapısını wovels arrayini kullanmadan switch yapısına çeviriniz.

var word = "can"
var firstLetter = word[word.startIndex]
var newWord = ""
var vowels: [Character] = ["a", "e", "i", "o", "u"]

if vowels.contains(firstLetter) {
    newWord = word + "yay"
} else {
    word.remove(at: word.startIndex)
    newWord = "\(word)\(firstLetter)ay"
}
