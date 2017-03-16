//: # Classes, Properties, and Methods

import UIKit

//: # Class'lar
//  Sınıf, nesne yönelimli programlama dillerinde nesnelerin özelliklerini, davranışlarını ve başlangıç durumlarını tanımlamak için kullanılan şablonlara verilen addır.

// Class'lar property ve metodlardan oluşurlar
// Aşağıdaki Movie class'ınin title, director, releaseYear propertyleri ve init metodu var.

// Class'lardan nesneler oluşturmak için initialization'a ihtiyacımız olacak.

class Movie {
    let title: String
    let director: String
    let releaseYear: Int
 
    init(title: String, director: String, releaseYear: Int) {
        self.title = title
        self.director = director
        self.releaseYear = releaseYear
    }    
}

// init metodu? = Constructor
// init metodları çağrılırken External parametre isimlerine ihtiyaç duyulur.

var count = Int(10)
var count2 = Int.init(5)

var myMovie = Movie.init(title: "Esaretin bedeli", director: "dnkilic", releaseYear: 1999)

myMovie.title

class MovieArchive {
    var movies:[Movie]
    
    func filterByYear(_ year:Int) -> [Movie] {
        var filteredArray = [Movie]()
        for movie in self.movies {
            if movie.releaseYear == year {
                filteredArray.append(movie)
            }
        }
        return filteredArray
    }
    
    init(movies:[Movie]) {
        // init metodunun parametre isimleri ile class'ın içerisindeki property isimlerini ayırabilmek için self keyword'ünü kullanıyoruz. Self keywordü burada class'ı ifade eder.
        self.movies = movies
    }
}
//: ### Stored properties & Initialization
// Scroll up to see the Movie class!

// Şimdi 3 tip property hakkında konuşacağız
//    * stored properties
//    * type/class properties
//    * computed properties

// Stored propertylere classlar'dan instance(nesne) oluştururlurken (initialize edilirken) değer verilmesi zorunludur.

// classlardan nesneler oluşturmak için init metodlarını çağırırız, bu durumda stored propertyler init metoduna parametre olarak verilmelidir diyebiliriz. 

//Aslında şimdiye kadar defalarca init metodu çağırdık ama siz görmediniz.

var who = Int.init()
who = Int()

// initialization'dan daha önce bahsetmiştik
var thursdayNightMovie = Movie(title:"Point Break", director:"Kathryn Bigelow", releaseYear: 1991)

// initialize edilmiş bir nesnenin propertylerine aşağıdaki gibi ulaşılır
thursdayNightMovie.director
thursdayNightMovie.releaseYear
thursdayNightMovie.title

// Hatırlarsanız bir class içerisindeki property için init metodu ile değer verilmesi yapılmıyorsa property'i optional olarak tanımlıyorduk. Buna ek olarak init metodu ile değer verilmeyen bir property'e class içerisinde default değer vermek de mümkündür. Tabi bu durumda değerin init metoduyla dışardan alınmasına gerek kalmaz.

//class SoftwareLanguage {
//    let name : String
//    var hardToLearn: Bool!
//
//    init(name: String) {
//        self.name = name
//    }
//}

//class SoftwareLanguage {
//    let name : String
//    var hardToLearn: Bool?
//
//    init(name: String) {
//        self.name = name
//    }
//}

class SoftwareLanguage {
    let name : String
    let hardToLearn = true

    init(name: String) {
        self.name = name
    }
}

// let ile tanımlanmış bir sabitin değeri değiştirilebilir mi?
// var c = SoftwareLanguage.init(name : c)
// c.hardToLearn = false

//: ### Type/Class properties & Computed Properties
// Type property'leri Class şablonundan üretilmiş instance/object/nesne'lere göre değişiklik göstermez. Class'ın bütün instance'ları için aynı değeri tutar.

// Örneğin KidsMovie class'ı içerisinde yer alan permittedRatings değeri Type Propertylerine bir örnektir. Bir Type property tanımlamak için "static" keyword'unu kullanırız.

// metaScore değeri ise bir Computed Property'dir. Computed Property'ler custom getter ve setter'lara sahiptir. Aşağıdaki reduce() metodu bir array içerisindeki değerleri tek bir değerde toplamak için kullanılır. Burada yapılan işe daha sonra değineceğiz.

class KidsMovie {
    let title: String
    let director: String
    let releaseYear: Int
    var mpaaRating: String
    static let permittedRatings = ["G", "PG"]
    let reviewScores:[Double]
    
    var metaScore: Double {
        get {
            let value = reviewScores.reduce(0) { $0 + $1 } / Double(reviewScores.count)
            return value
        }
    }
    
    init(title: String, director: String, releaseYear: Int, mpaaRating:String, reviewScores: [Double]) {
        self.mpaaRating = mpaaRating
        self.title = title
        self.director = director
        self.releaseYear = releaseYear
        self.reviewScores = reviewScores
    }
}

var fridayNightMovie = KidsMovie(title:"Princess Bride", director:"Rob Reiner", releaseYear: 1987, mpaaRating:"PG", reviewScores:[9, 9.5, 10, 9.5])

// .metaScore ifadesi aslında get metodunu çağırmamızı sağladı, peki diğer property'ler için get veya set metodları yazmadık, onları nasıl get/set edebiliyoruz?
// CEVAP : Biz görmesek de onların da get/set metodları var!
fridayNightMovie.metaScore

//: ### Calling Instance Methods
// Property'leri öğrendik, Şimdi Movie class'ına geri dönelim ve birkaç Rob Reiner filmi oluşturalım
var princessBride = Movie(title: "The Princess Bride", director: "Rob Reiner", releaseYear: 1987)
var spinalTap = Movie(title: "This is Spinal Tap", director: "Rob Reiner", releaseYear: 1984)
var standByMe = Movie(title: "Stand By Me", director: "Rob Reiner", releaseYear:1986)
// Oluşturduğumuz filmleri bir Array'de toplayalım
var robReinerMovies = [princessBride, spinalTap, standByMe]

// MovieArchive class'ından bir instance oluşturalım
var myArchive = MovieArchive(movies: robReinerMovies)

// Son olarak filterByYear metodunu çağıralım
var movie = myArchive.filterByYear(1986)
var firstMovie = movie[0]
print("\(firstMovie.title)")

// Nesne/Instance/Object oluşturduktan sonra çağrılan metodlara instance metodu adını veriyoruz. Burada filterByYear metodu bir instance metodudur.

// Type/class metodları da type property'leri gibi instance'dan bağımsızdır, class'a bağlıdır.

// Type/class metodları instance oluşturulmadan çağrılabilir.

//: ### Örnek bir Type Metodu
UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.photoLibrary)

//: Son olarak Access Modifiers'dan bahsedelim
// public Class + App/Framework + World
// Genelde Class'larımızın public olmasını isteriz

// internal(Default) Class + App/Framework
// Swift dilinde default access control modifier'ı internal'dir. Yani bir class, bir metod ayda bir değişken tanımlarken başına access modifier eklemezsek internal gibi davranır. internal öğeleri application içinde her yerden çağırmak mümkündür.

// private Class
// Bazı durumlarda Class'larımızın private olmasını isteriz





