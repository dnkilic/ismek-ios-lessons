import UIKit

//: # Lesson 2 Exercises
//: ## Optionals
//: ### Exercise 1
//: Dictionary içerisinden bir değer çekildiğinde, Swift bir optional döner. Bu durumda:
//:
//: 1a) director değişkeni optional'dir. İçerisindeki değeri kullanabilmek için unwrap etmek gerekir. `if let` yapısını kullanarak moviesDict[movie]` içerisindeki değeri döndürünüz
var moviesDict:Dictionary = [ "Star Wars":"George Lucas", "Point Break":"Kathryn Bigelow"]
var movie = "Point Break"
var director = moviesDict[movie]

//: 1b) Yazdığınız kodu dictionary içerisinde yer almayan bir film için test ediniz.

//: ### Exercise 2
//: Aşağıdaki LoginViewController sınıfı bir UITextField kullanarak kullanıcı adını tutmalıdır. Bu text field için sınıf içerisinde bir property tanımlayınız. Textfield property'sinin sınıf construct edilene kadar initialize edilmemesi gerektiğini unutmayın.
class LoginViewController: UIViewController {
}

//: ### Exercise 3
//: Swift Int tipi bir String parametre alıp optional Int? tipi dönen bir constructor'a sahiptir
//:
//: 3a) Aşağıdaki kodu number değerini güvenle unwrap ederek tamamlayınız
var numericalString = "3"
var number = Int(numericalString)
//TODO: Unwrap number to make the following print statement more readable.
print("\(number) is the magic number.")
//: 3b) numericalString değerini "three" yapıp playground'u tekrar çalıştırınız.

//: ### Exercise 4
//: UIViewController sınıfı tabBarController adında bir property içerir.  tabBarController property'si UITabBarController? tipinde bir optional'dir. tabBarController kendi içerisnde bir tabBar property'si tutar. Aşağıdaki kodu tab bar propertysine optional chaining kullaranak ulaşacak şelilde tamamlayınız.
var viewController = UIViewController()
//if let tabBar = //TODO: Optional chaining here {
//    print("Here's the tab bar.")
//} else {
//    print("No tab bar controller found.")
//}
//: ### Exercise 5
//: Aşağıda eser ve artist dictionary'si verilmiştir
//:
//: 5a) artist bir optional type'dır. içerisindeki değer unwrap edilmeden kullanılamaz. `if let` yapısını kullanarak `paintingDict[painting]` içerisindeki değeri döndürünüz.

var paintingDict:Dictionary = [ "Guernica":"Picasso", "Mona Lisa": "da Vinci", "No. 5": "Pollock"]
var painting = "Mona Lisa"
var artist = paintingDict[painting]

//: 5b) Yazdığınız kodu dictionary içerisinde yer almayan bir eser için test ediniz.

//: ### Exercise 6
//: Aşağıdaki cancel button'ı için width değerini set ediniz.  cancelButton değişkeninin implicitly unwrapped optional olarak tanımlandığını unutmayınız.
var anotherViewController = UIViewController()
var cancelButton: UIBarButtonItem!
cancelButton = UIBarButtonItem()
// TODO: Set the width of the cancel button.
//: ### Exercise 7
//: UIViewController sınıfının parent adında bir propertysi bulunur.  parent property'si UIViewController? optional tipindedir. View controller'ın bir parent view controller'ı olup olmadığını her zaman bilemeyiz.  parent propertysini if ley kullanarak güvenli bir biçimde unwrap ediniz.
var childViewController = UIViewController()
// TODO: Safely unwrap childViewController.parent
