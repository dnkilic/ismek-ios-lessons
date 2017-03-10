//: # Swift Optionals!
import UIKit
//: ### Example 1: Birçok Swift data tipi Nil değerini alamaz
// Int nil değer tutamaz
var x: Int
//x = nil

// Nesneler nil değer tutamaz
var c: AnyObject
c = UIColor.red
//c = nil

//: ### Cool! Ancak bazen nil değerlere ihtiyaç duyarız :(
//: 1. Bir method kendisinden istenilen değeri dönemezse
var y: Int?
var s1: String
var s2: String

s1 = "123"
s2 = "ABC"

y = Int(s1)
y = Int(s2)

//: 2. Nesne oluşturulurken(construction) initialize edilemeyen property'ler
class ViewController: UIViewController {
    var button: UIButton!
}

















//: ### Soru işareti ile optionals tanımalamak (decleration)
// Example 1
var z: Int?
var string: String
string = "123"
z = Int(string)
//z = z * 2

// Example 2
class AnotherViewController: UIViewController {
    //var anotherButton: UIButton
}




































//: ### Optional'leri if let ile açmak (Unwrapping)
// Example 1: if ley yapısı nil dönme ihtimali olan değerler için çok kullanışlıdır
var zee: Int?

let strings = ["ABC","123"]
let randomIndex = Int(arc4random() % 2)
let anotherString = strings[randomIndex]

zee = Int(anotherString)

if let intValue = zee {
    intValue * 2
} else {
    "No value"
}

//Example 2: Another example with UIImageView

var imageView = UIImageView()

imageView.image = UIImage(named:"puppy_in_box")
if let image = imageView.image {
    let size = image.size
} else {
    print("This image hasn't been set.")
}
imageView.image

//: ### Optional Zincirleme (Chaining)
// Example 1
var anotherImageView = UIImageView()
anotherImageView.image = UIImage(named:"puppy_in_box")

var size = anotherImageView.image?.size
type(of: size)

if let imageSize = anotherImageView.image?.size {
    print("Here's the image size: \(imageSize)")
} else {
    print("This image hasn't been set.")
}

imageView.image


// Example 2

var animal = Animal(name: "Lenny", species: "lemur", tailLength: 12)

animal = Animal(name: "Gilbert", species: "Gorilla", tailLength: nil )

if let tailLength = animal.tail?.length {
    print("\(animal.name)'s tail is \(tailLength) long")
} else {
    print("\(animal.name) doesn't have a tail.")
}

//: ### Implicitly Açılan(Unwrapped) Optional'ler
// Example 1
let w =  Int("123")!
w * 2

// Example 2
class BetterViewController: UIViewController {
    var myButton: UIButton!
}

//: ### Optional'ler fonksiyonlara parametre olabilirler

// Example: Picking up groceries in an optional car
func pickUpGroceries(_ car:Car?) {
    if let car = car {
        print("We'll pick up the groceries in the \(car.model)")
    } else {
        print("Let's walk to the store")
    }
}

var someCar = Car(make: "Toyota", model: "Corolla")
pickUpGroceries(someCar)

pickUpGroceries(nil)

// Example: Hosting a guest in an optional extra room
func host(_ guest: String, extraRoom: Room?) {
    if let extraRoom = extraRoom {
        print("Come stay with us, \(guest), you can sleep in the \(extraRoom.name).")
    } else {
        print("Come stay with us, \(guest), you can sleep on the couch.")
    }
}

var someRoom = Room(name: "guest room", occupied: false)
host("Grandma", extraRoom: someRoom)
host("Ryan", extraRoom: nil)







