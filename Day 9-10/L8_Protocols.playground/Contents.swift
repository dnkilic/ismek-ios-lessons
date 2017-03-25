//: # Protocols

import UIKit

//: ### Protocol Syntax'ı
// Example 1

// Protocol tanımı içerisinde sadece metod imzası yer alır
// Metodlarda ne yapılacağını Protocol'ü adopt eden Class'lar karar verir

// Bir ŞEKİL protocol'ü tanımladık
protocol Shape {
    func area() -> Double
    func circumstance() -> Double
}

// Bir daire sınıfı tanımlayalım
class Circle {
    let r : Double
    
    init(r : Double) {
        self.r = r
    }
}

// Bir dikdörtgen sınıfı tanımlayalım
class Rectangle {
    let x : Double
    let y : Double
    
    init(x : Double, y : Double) {
        self.x = x
        self.y = y
    }
}

// Bir kare sınıfı tanımlayalım
class Square {
    let x : Double
    
    init(x : Double) {
        self.x = x
    }
}

// Oluşturduğumuz geometrik şekil sınıflarının alan ve çevresini hesaplayan fonksiyonları Shape protocolünde tanımladık, şimdi sınıflarımız Shape protocolünü adapt edip, metodları kendi içlerinde implement etmeliler

// Bir daire sınıfı tanımlayalım, Circle sınıfı Shape protocolünü adapt etsin

//class CircleNew : Shape {
//    let r : Double
//    
//    init(r : Double) {
//        self.r = r
//    }
//}

// Bir dikdörtgen sınıfı tanımlayalım, Rectangle sınıfı Shape protocolünü adapt etsin

//class RectangleNew : Shape {
//    let x : Double
//    let y : Double
//    
//    init(x : Double, y : Double) {
//        self.x = x
//        self.y = y
//    }
//}

// Bir kare sınıfı tanımlayalım, Square sınıfı Shape protocolünü adapt etsin

//class SquareNew : Shape {
//    let x : Double
//    
//    init(x : Double) {
//        self.x = x
//    }
//}

// Sınıflar adopt ettikleri protocollerin metodlarını implement etmek zorundadırlar

// Metodları adopt ettikten sonra sınıfımızın özelliklerine göre değiştiriyoruz
class CircleNew : Shape {
    internal func circumstance() -> Double {
        return 2 * Double.pi * r
    }

    internal func area() -> Double {
        return r * r * Double.pi
    }

    let r : Double

    init(r : Double) {
        self.r = r
    }
}

class RectangleNew : Shape {
    internal func circumstance() -> Double {
        return 2 * (x + y)
    }

    internal func area() -> Double {
        return x * y
    }

    let x : Double
    let y : Double

    init(x : Double, y : Double) {
        self.x = x
        self.y = y
    }
}

class SquareNew : Shape {
    internal func circumstance() -> Double {
        return 4 * x
    }

    internal func area() -> Double {
        return x * x
    }

    let x : Double

    init(x : Double) {
        self.x = x
    }
}

// Şimdi bir başka örneğe bakalım,

protocol Souschef {
    func cut(vegetable: String) -> String
    func wash(vegetable: String) -> String
}

class Roommate: Souschef, Equatable {
    var hungry = true
    var name: String
    
    init(hungry: Bool, name: String) {
        self.hungry = hungry
        self.name = name
    }

    func cut(vegetable: String) -> String {
        return "She's choppin' \(vegetable)!"
    }

    func wash(vegetable: String) -> String {
        return "The \(vegetable) is so fresh and so clean"
    }
}

func == (lhs: Roommate, rhs: Roommate) -> Bool {
    return lhs.name == rhs.name && rhs.name == rhs.name
}


// Bu örnekte Souschef protocolünün kullanımı gayet basit, peki Equatable ne demek oluyor? Google'da aratınız.

// Example 2

var roomie = Roommate(hungry: true, name: "Jennifer")
var theBestRoomie = Roommate(hungry: true, name: "Jennifer")

if(roomie == theBestRoomie)
{
    print("They are equal!")
}

//: ### Protocol aynı zamanda bir tiptir.
// DinnerCrew sınıfı hangi tipte Array tutuyor?

class DinnerCrew {
    var members: [Souschef]

    init(members: [Souschef]) {
        self.members = members
    }
}

// Souschef protocolünü adopt eden başka bir sınıf oluşturalım

class RandomPasserby: Souschef {
    var name: String
    
    init(name: String){
        self.name = name
    }

    func cut(vegetable: String) -> String {
        return "She's choppin' \(vegetable)!"
    }
    
    func wash(vegetable: String) -> String {
        return "The \(vegetable) is so fresh and so clean"
    }
}

// DinnerCrew sınıfı içerisinde Souschef tipinde bir array tutardı

var newFriend = RandomPasserby(name: "Dave")
var motleyDinnerCrew = DinnerCrew(members:[newFriend, roomie])



