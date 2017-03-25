//: # Closures

//: ### Closures include: 
//: __global functions, nested functions, and closure expressions__

//: ### closure expression Nedir?
//: closure expression - __ isimsiz ve fonksiyonlara argüman olarak verilebilen  kod bloklarıdır

//: ### closure expression'lar ne için kullanılır?
//: Closure expression'lar gelecek bir zamanda execute edilecek  aksiyonları ifade etmek için kullanılırlar

//: ## Sıralama

var bids = [48.1, 75.4, 63.7, 52.4, 68.2]
var orderedBids = bids.sorted(by: { (bid1: Double, bid2:Double) -> Bool in
    return  bid2 > bid1
})
print(orderedBids)

//: Closure'ler genelde aşağıdaki gibi gösterilirler
//:
//: { (parameters) -> return type **in**
//:
//:     statements to execute
//:
//:}

var birthYears = [2004, 2011, 2007, 2005, 2002]
var youngestToOldest = birthYears.sorted(by: { (year1: Int, year2: Int) -> Bool in
    return year1 > year2
})

func deneme(denemem : ((Int, Int) -> Bool)?)
{
    denemem
}

deneme(denemem : { (year1: Int, year2: Int) -> Bool in
    return year1 > year2
})

//Bu durumda closure tipimiz (Int, Int) -> Bool oldu

youngestToOldest

print(youngestToOldest)

//Bir double array içerisindeki elemanları sıralamak

var bidsDouble = [10.1, 20.1, 30,1, 1, 2, 3, 0 , 4, 4, 5, 6,7]

print(bidsDouble.sorted(by:{
    (bid1:Double, bid2:Double) -> Bool in
    bid2 > bid1
}))
[0.0, 1.0, 1.0, 2.0, 3.0, 4.0, 4.0, 5.0, 6.0, 7.0, 10.1, 20.100000000000001, 30.0]


//Bu durumda closure tipimiz (Double, Double) -> Bool oldu

//: ### Quiz: Bu closure'un tipi nedir?
var soup = ["tomato", "hot and sour", "french onion", "vegetable"]
var alphabeticalSoup = soup.sorted(by: { (soup1: String, soup2: String) -> Bool in
    return soup2 > soup1
})

alphabeticalSoup

//: ### Burada belli değere göre filtreleme işlemi yapıyoruz
var examGrades = [81, 99, 54, 84, 98]
var passingGrades = examGrades.filter({(grade: Int) -> Bool in
    return grade > 70
})
passingGrades

//: CLOSURE'LARI SADELEŞTİRMEK MÜMKÜN

// TRICK 1
//Compiler closure expression'ların dönüş tiplerini ve alacağı argümanları verilen methodun özelliklerine göre bulabilir.

var grades = [81, 99, 54, 84, 98]
var failingGrades = examGrades.filter({grade in
    return grade < 70
})

failingGrades

//TRICK 2
//Eğer bir closure "grade>70" şeklinde single bir expression ise; return keyword'üne gerek kalmadan expression'ın sonucu compiler tarafından anlaşılır.
//: Implicit returns
var moreGrades = [81, 99, 54, 84, 98]
var morePassingGrades = examGrades.filter({grade in
    grade > 70
})
morePassingGrades

//TRICK 3
//Swift closure expression'lar için default argument isimlendirmesine izin verir.
//Yani ilk argümana isim vermek yerine $0 dediğinizde ona erişebielirsiniz.
//İkinci argüman ise tahmin ettiğinzi gibi $1 oalcaktır.
//Bu durumda closure expression default argümanı ile gösterilip basit bir biçimde yazılabilir. Default argüman ismini kullandığımız için grade kelimesini kullanmaya ihtiyacımız kalmadı, dolayısıyla grade kelimesinin geçtiği her yeri silebiliriz.
//: Shorthand argument names: $0, $1, $2 ...
// Example 1
var myGrades = [81, 99, 54, 84, 98]
var myFailingGrades = examGrades.filter({
    $0 < 70
})
myFailingGrades

//Şimdi bu kısaltmaların hepsini tekrar gözden geçirelim. Aşağıdaki closure'u sadeleştirin.
// Example 2
var soups = ["yayla çorbası", "mercimek çorbası", "ezogelin çorbası", "mantar çorbası"]
var sortedSoups =  soups.sorted(by:{
    (soup1:String, soup2:String) -> Bool in
    soup2>soup1
})

print(sortedSoups)

var soupsRefactored = ["yayla çorbası", "mercimek çorbası", "ezogelin çorbası", "mantar çorbası"]
var sortedSoups2 =  soupsRefactored.sorted(by:{
    $1>$0
})

print(sortedSoups)









