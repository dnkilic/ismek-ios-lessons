//: ## Lesson 9 Exercises - Closures
import UIKit
//: __Problems 1&2__
//:
//: Asagidaki kod parcaciklari array'ler uzerinde sort islemi yapmaktadIr. Her iki kod parcasi icin:
//:
//:__a.__
//:Closure'lari arrayleri tersten siralayacak sekilde guncelleyiniz.
//:
//:__b.__
//:Closure'lari olabildigince basitlestiriniz.
// 1
var surnames = ["Silverman", "Fey", "Whig", "Schumer", "Kaling"]
let orderedSurnames = surnames.sorted(by: {(name1: String, name2: String) -> Bool in
    return name2 > name1
})

// 2
let battingAverages = [0.302, 0.556, 0.280, 0.500, 0.281, 0.285]
let sortedAverages = battingAverages.sorted(by: {(average1: Double, average2: Double) -> Bool in
    return average2 > average1
})

//: __Problem 3__
//:
//: Asagidaki closure bir array icinden 3 ile bolunebilen sayilari filtreler.
let numbers = [685, 1728, 648, 87, 979, 59175432]
let divisibleByThree = numbers.filter({(number: Int) -> Bool in
    number % 3 == 0
})

//: __3a.__
//:Asagidaki String arrayinde verilen Stringleri 12'ye bolunebilme bakimindan filtreleyiniz. (Hint Int("1")! = 1)
let numbersAsStrings = ["685", "1728", "648", "87", "979", "59175432"]

//: __3b.__
//: 3a icin yazdiginiz closure'u olabilecek en sade hale getiriniz.

//: __Problem 4__
//:
//: Asagidaki arrayde dogan kilic ogrencilerinin sinav sonuclari verilmistir. dogan kilic tarafindan ortaya atilan tek olasilik basari kuramine gore hicbir ogrencinin puani 80'den kucuk olamaz. Buna gore curuk elmalari filtreleyiniz. :)
let grades = [150, 16, 82, 30, 10, 57]

//: __Problem 5__
//:
//: Array metodu map arguman olarak bir closure expression alir. Bu closure array'in butun elamanlari icin uygulanir, sonuclar baska bir array'de olusturulur ve olsturulan array donulur.
//: Asagidaki ornekte her bir array elamani yanina "aferin" Stringi eklenerek array'e eklenir.
// Example
let gradesAsStrings = grades.map({ (grade: Int) -> String in
    return "\(grade) aferin"
})
//: Dnkilic bir satis uygulamasi yapmistir ancak uygulamada para birimi olarak ne kullansa bilememistir.
//: Son gelismelerle birlikte dollar para birimi kullanacagi dusunulurse asagidaki array'i para + "$" oalcak sekilde guncelleyiniz. (Mevcut array'de para birimi TL'dir. Dolara Cevirmelisin)
let pricesInTL = [750, 825, 2000, 725]

//: __Problem 6__
//:
//: icesirisine isim ve cinsiyet bilgisini parametre olarak alan bir Student class'i implement ediniz.
//: Daha sonra bu class'tan 6 adet nesne olusturunuz. Ve nesneleri bir array'in icine aktariniz.
//: Olusturdugunuz array icin map metodunu kullanarak bir closure yaziniz, buna gore eger cinsiyet kadin ise isim degeri isim + " (Kadin emojisi)", erkek ise isim + " (Erkek emojisi)" olarak guncellensin.


