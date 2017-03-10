//: Playground - noun: a place where people can play


var count : Int64 = 22
var total : Int64 = 1
for current in 1...count{
    total = total  * current
}

print(total)














class Person {
    var lucky: Bool = true
    var age: Int = 0
    var charming: Int = 10
    var height: Float = 0.40
}

var dnkilic = Person()
//dnkilic.lucky
//dnkilic.age

print("Aradan 10 sene geçer")
dnkilic.age = 10
//dnkilic.age

dnkilic.height = 1.205

dnkilic.charming = -10
//dnkilic.charming

print("Loto Kazandım!")

dnkilic.lucky = true


var pi: Float = 3.14
var longestFloat: Double = 2.11111111113638737386432867

var d: Character = "d"
var o: Character = "o"
var ğ = "ğ"
var a = "a"
var n = "n"
var k = "k"
var ı = "ı"
var l = "l"
var ı1 = "ı"
var ç = "ç"

var myName = "Doğan Kılıç"


var g = 9.8
type(of: g)


class Computer {
    var brand = ""
    var cpu = 0.0
    var isOpen = false
    var serial = 0.0
}

var macbook = Computer()
macbook.brand = "Apple"
macbook.cpu = 3.0
macbook.isOpen = true
macbook.serial = 1621.2121

//bir bool değer tanımlayın adı hungry olsun, eğer açsanız true değilse false olsun bu değer
//bir if else döngüsü içinde
//eğer hungry true ise print("acıktım")
//eğer hungry false ise print("tokum")


var hungry = true
var vegetarian = false

if hungry && vegetarian
{
    print("zebze")
}
else if hungry && !vegetarian
{
    print("nusret")
}
else
{
    print("aç değilim zaten")
}

var sandwichPrice = 4.0
var tax = true

var deneme = tax ? 0.5 : 0

var totalPrice = sandwichPrice + (tax ? 0.5 : 0)

if tax
{
    sandwichPrice = sandwichPrice + 0.5
}

var dnkilic1 = "😬  \(sandwichPrice)" //interpolation


var dogName = "Zeytin"
var sentence = "Benim köpeğimin adı \(dogName)"







































