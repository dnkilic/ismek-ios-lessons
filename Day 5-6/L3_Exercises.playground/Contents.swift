//: # Lesson 3 Exercises - Collections
import UIKit

//: ## Array initialization

//: ### Exercise 1
//: 1a) cuteAnimals adında bir array initialize edin. bu array içindeki valuelar CuddlyCreature tipinde olmalı.

//: 1b) 5 adet bool değer içeren bir array initialize ediniz.

//: ## Array operations: count, insert, append, remove, retrieveWithSubscript

//: ### Exercise 2
//: Aşağıdaki arrayde kaç item olduğunu consola bastırınız
var spaniels = ["American Cocker", "Cavalier King Charles", "English Springer", "French", "Irish Water","Papillon", "Picardy","Russian", "French", "Welsh Springer"]
//: ### Exercise 3
//: Aşağıdaki arraye "indigo" item'ını "blue"'dan sonra ve "violet"'den önce ekleyiniz.

var colors = ["red", "orange", "yellow", "green", "blue", "violet"]
//: ### Exercise 4
//: spaniels array'ine "English Cocker"  item'ını "English Springer" item'ından önce gelecek şekilde ekleyiniz.

//: ### Exercise 5
//: olympicHosts arrayinin sonuna "Barcelona" itemını ekleyiniz.
var olympicHosts = ["London", "Beijing","Athens", "Sydney", "Atlanta"]

//: ### Exercise 6
//: waitingList arrayinden "Lyla" ve "Daniel" itemlarını siliniz, sonra ise admitted arrayinin sonuna ekleyiniz.
var admitted = ["Jennifer", "Vijay", "James"]
var waitingList = ["Lyla", "Daniel", "Isabel", "Eric"]

//: ### Exercise 7
//: admitted arrayinin 2nd ve 3rd elemanlarını konsola bastırınız.

//: ## Dictionary initialization

//: ### Exercise 8
//: a) key olarak Strings ve value olarak Bools değerler tutan bir Dictionary initialize ediniz.

//: b) keys olarak "Anchovies", "Coconut", "Cilantro", "Liver"  ve value olarak true true false true değerlerini içeren bir Dictionary tanımlayınız

//: ## Dictionary operations: count, insert, remove, update, retrieve with subscript

//: ### Exercise 9
//: George H.W. Bush : Mankafa değerini aşağıdaki Dictionary'e ekleyiniz
var presidentialPetsDict = ["Barack Obama":"Bo", "Bill Clinton": "Socks", "George Bush": "Miss Beazley", "Ronald Reagan": "Lucky"]

//beklenen output
// ["Barack Obama":"Bo", "George Bush": "Miss Beazley","Bill Clinton": "Socks", "George H. W. Bush": "Mankafa", "Ronald Reagan": "Lucky"]
//: ### Exercise 10
//: Remove the entry for "George Bush" and replace it with an entry for "George W. Bush".

//: ### Exercise 11
//: aşağıda presidentialDogs adında yeni bir Dictionary presidentialPets Dictionarysinden kopyalanmıştır. Bill Clinton için "Socks" değerini "Buddy" değeri ile değiştiriniz
var presidentialDogs = presidentialPetsDict

//: ### Exercise 12
//: Yukarıdaki Dictionaryden faydalanarak "Michele Obama walks Bo every morning." çıktısını konsola bastırınız. 
//print("Michele Obama walks \() every morning.")

//: ### Exercise 13
// Led Zeppelin kaç studio albümü yayınlamıştır?
var studioAlbums = ["Led Zeppelin":1969, "Led Zeppelin II": 1969, "Led Zeppelin III": 1970, "Led Zeppelin IV": 1971, "Houses of the Holy":1973, "Physical Graffiti": 1975, "Presence":1976, "In Through the Out Door":1979, "Coda":1982]
