//: ## Lesson 6 Exercises - Classes, Properties and Methods

import UIKit

//: __Problem 1__
//:
//: __1a.__
//: Compiler Animal sınıfı içerisinde bir init metodu olmadığı için hata vermektedir. Bir init metodu yazarak bu problemi çözünüz. Tail struct'ını kullanarak Animal'ın kuyruk uzunluğunu initialize eden bir mekanizma eklenmeli(init metodu içerisine).
struct Tail {
    let lengthInCm: Double
}

class Animal {
    var species: String = ""
    let tail: Tail
}
//: __1b.__
//: Üç tane Animal objesi oluşturunuz.

//: __Problem 2__
//:
//: Aşağıda Peach sınıfı verilmiştir
class Peach {
    let variety: String
    
    // Yumuşaklık değeri 1-5 arasında verilebilmektedir
    var softness: Int
    
    init(variety: String, softness: Int) {
        self.variety = variety
        self.softness = softness
    }
}
//: __2a.__
//: Peach sınıfına "varieties" adında bir type property'si ekleyiniz. Bu property farklı şeftali çeşitlerini(bursa, uganda, nektari) tutan bir array olmalıdır.
//:
//: __2b.__
//: ripen() adında bir instance methodu ekleyiniz, bu metod stored property softness'ın değerini arttırmalı ve şeftalinin yenilmeye(if softness==5) hazır olup olmadığına dair bir String konsola basmalı.
//:
//: __2c.__
//: Peach sınıfından bir object üretip ripen() metodunu çağırınız.

//: __Problem 3__
//:
//: __3a.__
//:FluffyDog sınıfına computed property olarak "cuddlability"yi ekleyiniz. Cuddlability değeri stored property olan fluffiness ve droolFactor değerlerine göre hesaplanmalı(fluffiness-droolFactor).
var theFluffiestDog = UIImage(named:"fluffyDog")!
class FluffyDog {
    let name: String
    let fluffiness: Int
    let droolFactor: Int
    
    init(name: String, fluffiness: Int, droolFactor: Int) {
        self.name = name
        self.fluffiness = fluffiness
        self.droolFactor = droolFactor
    }
    
    func chase(_ wheeledVehicle: String)-> String {
        return "Where are you going, \(wheeledVehicle)? Wait for me! No, don't go! I will catch you!"
    }
}
//: __3b.__
//: FluffyDog sınıfından bir object üretiniz ve chase("skateboarder") metodunu çağırınız.

//: __Problem 4__
//:
//: __4a.__
//: bark() adında bir instance method oluşturunuz, bu metod size stored property'sine göre farklı Stringler dönmeli. (small -> yip yip, medium -> arf arf, large -> woof woof)
enum Size: Int {
    case small
    case medium
    case large
}

class ChattyDog {
    let name: String
    let breed: String
    let size: Size
    
    init(name: String, breed: String, size: Size) {
        self.name = name
        self.breed = breed
        self.size = size
    }
}
//: __4b.__
//: ChattyDog sınıfından birkaç object üretiniz ve bark() metodunu çağırınız.

//: __4c.__
//: bark() metodunu type method'u olarak yeniden yazınız ve  speak() adıyla  adlandırınız. Bu metodu çağırarak test ediniz.

//: __Problem 5__
//:
//:__5a.__
//: House sınıfı için bir init metodu yazınız.
enum Quality {
    case poor, fair, good, excellent
}

enum NaturalDisaster {
    case earthquake
    case wildfire
    case hurricane
}

class House {
    var numberOfBedrooms: Int = 0
    let location: Quality
 
    func willStayStanding(_ naturalDisaster:NaturalDisaster)-> Bool {
        switch naturalDisaster {
        case .earthquake:
            return true
        case .wildfire:
            return true
        case .hurricane:
            return false
        }
    }
}

//: __5b.__
//: House sınıfından bir object oluşturunuz ve willStayStanding(.earthquake) metodunu çağırınız.  bu metod parametre olarak NaturalDisaster tipinde bir değer alır ve ilgili felakette evin etkilenip etkilenmeyeceğine dair  bir Bool değer döner.

//: __5c.__
//: "worthyOfAnOffer" adında bir computed property ekleyiniz. Bu property bir Bool olmalı ve dönüş değeri numberOfBedrooms ve location değerlerinin bir kombinasyonu olmalı.(location excellent|good && numberOfBedrooms == 2|3 ise true döner değilse false döner)






