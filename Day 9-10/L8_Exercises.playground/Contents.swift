//: ## Lesson 8 Exercises - Protocols & Extensions

import UIKit
import Foundation

//: __Problem 1__
//:
//: Aşağıda Teenager class'ı ve Babysitter protocol'ünü görebilirsiniz.
//:
//: __1a.__ Teenager class'ını Babysitter protocol'ünden  adopt eder duruma getiriniz.
//:
//: __1b.__ Babysitter protocol'üne uyum sağlamak için gerekli metodları Teenager class'ı içerisinde implement ediniz.
//:
//: __1c.__ Teenager class'ından nesneler oluşturup playCandyland() and read() metodlarını çağırarak test ediniz.

enum Level {
    case low
    case medium
    case high
}

class Teenager {
    var age: Int
    let responsible: Bool
    let patience: Level
    
    init(age: Int, responsible: Bool, patience: Level) {
        self.age = age
        self.responsible = responsible
        self.patience = patience
    }
}

protocol Babysitter {
    func playCandyland(_ numberOfTimes: Int)
    func read(_ book: String, firstLine: String, asleep: Bool) -> Bool
}


//: __Problem 2__
//:
//: Aşağıda Animal class'ı ve Adorable protocol'ünü görebilirsiniz.
//:
//: __2a.__ Animal class'ını Adorable protocol'ünden  adopt eder duruma getiriniz.
//:
//: __2b.__ Adorable protocol'üne uyum sağlamak için gerekli metodları Animal class'ı içerisinde implement ediniz.
//:
//: __2c.__ Animal class'ından nesneler oluşturup curlIntoSmallBall() and frolick() metodlarını çağırarak test ediniz.

enum Size {
    case tiny, small, medium, large, xLarge
}
protocol Adorable {
    var size: Size { get }
    var softFur: Bool { get }
    
    func frolick()
    func curlIntoSmallBall()
}

var cuteMouse = UIImage(named: "mouseBall")

class Animal { 
    let species: String
    let numberOfLegs: Int
    
    init(species: String, numberOfLegs: Int) {
        self.species = species
        self.numberOfLegs = numberOfLegs
    }
}
var pic = UIImage(named: "frolick.jpg")

//: __Problem 3__
//:
//: Friend class'ı Mover protokolünü implement(adopt) etmiştir, ancak yanlışlıkla Mover protocol'ü silinmiştir.
//:
//: __3a.__
//: Friend class'ında yer alan metodlardan yola çıkarak,  Mover protocol'ünü baştan yazınız.
//:
//: __3b.__ Friend class'ını Mover protocol'ünden adopt edecek şekilde güncelleyiniz.

class Friend {
    var reliability: Int
    var likesYou: Bool
    
    var willWorkForPizzaAndBeer = true
    
    init (reliability: Int, likesYou: Bool, willWorkForPizzaAndBeer: Bool) {
        self.reliability = reliability
        self.likesYou = likesYou
        self.willWorkForPizzaAndBeer = willWorkForPizzaAndBeer
    }
    
    func goHiking() -> String {
        return "Let's go to the Redwoods!"
    }
    
    func comeOverForDinner() -> String {
        return "Your stew is the best!"
    }
    
    func carryCouch() -> String {
        return "Here, I'll walk backwards down the stairs and hold the heavy end."
    }
    
    func loadVan(_ empty: Bool) -> Bool {
        print("We can totally fit a king size bed in here.")
        var isEmpty = empty
        isEmpty = false
        return isEmpty
    }
}

//: Problem 4
//:
//: Aşağıda Squirrel class'ının ve Hoarder protocol'ünü implement ettiğini görebilirsiniz.
//: ScrubJay class'ını Hoarder protocol'üne adopt edecek şekilde güncelleyiniz.
struct Tail {
    let lengthInCm: Double
    let bushiness: Int
}

protocol Hoarder {
    func cache(_ foodItem: String) -> String
    func pilfer() -> String
}

class Squirrel: Hoarder {
    let justTryinToGetANut = true
    let bushyTail: Tail
    
    init(bushiness: Int, length: Double) {
        self.bushyTail = Tail(lengthInCm: 20.0, bushiness: 10)
    }
    
    func scurry() -> String {
        return "Run away!"
    }
    
    func cache(_ foodItem: String) -> String {
        return "I'll be back for you later, little \(foodItem)s."
    }
    
    func pilfer() -> String {
        return "Jackpot! Your stash is mine!"
    }
    
}

class ScrubJay {
    let wings = 2
    let female: Bool
    
    init(female: Bool) {
        self.female = female
    }
    
    func fly() -> String {
        return "Swoop!"
    }
}

//: __Problem 5__
//:
//: Extension'lar protocol'lere eklenebilirler. Aşağıdaki örnekte Roommate class'ı Souschef protocol'üne extension ile adopt olur. Add an extension to the Minion class'ına bir extension ekleyerek DirtyDeeds protocol'üne uymasını sağlayın.

// Example
protocol Souschef {
    func chop(_ vegetable: String) -> String
    func rinse(_ vegetable: String) -> String
}

class Roommate {
    var hungry = true
    var name: String
    
    init(hungry: Bool, name: String) {
        self.hungry = hungry
        self.name = name
    }
}

extension Roommate: Souschef {
    func chop(_ vegetable: String) -> String {
        return "She's choppin' \(vegetable)!"
    }
    
    func rinse(_ vegetable: String) -> String {
        return "The \(vegetable) is so fresh and so clean"
    }
}

protocol DirtyDeeds {
    func cheat()
    func steal()
}

class Minion {
    var name: String
    
    init(name:String) {
        self.name =  name
    }
}

//: __Problem 6__
//:
//: Bu sitede yer alan extension [Coding Explorer Blog](http://www.codingexplorer.com/swift-extensions/) bir UIColor objesinin integer RGB değerleri ile initialize edilmesini kolaylaştırır.
//:
//: __6a.__
//: Pistachio rengini sık sık kullanacak bir uygulama yazdığınızı hayal edin. Bir class metodu yazarak R = 147, G = 197, ve B = 114 değerleri için UIColor nesnesi dönmesini sağlayın.Bu metodu aşağıdaki UIColor extension'una ekleyin.
//:
//: __6b.__
//: pistachio() metodunu bir nesne üzerinden çağırın
extension UIColor
{
    convenience init(redValue: Int, greenValue: Int, blueValue: Int)
    {
        let newRed   = CGFloat(Double(redValue) / 255.0)
        let newGreen = CGFloat(Double(greenValue) / 255.0)
        let newBlue  = CGFloat(Double(blueValue) / 255.0)
        
        self.init(red: newRed, green: newGreen, blue: newBlue, alpha: CGFloat(1.0))
    }
}







