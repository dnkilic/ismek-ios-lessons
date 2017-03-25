//: ### Bu playground dosyasını hatasaız çalışacak duruma getiriniz.
// Problem 1
protocol DirtyDeeds {
    func cheat()
    func steal()
}

class Minion: DirtyDeeds {
    internal func steal() {
        print("steal \(self)")
    }

    internal func cheat() {
        print("cheat \(self)")
    }

    var name: String
    
    init(name:String) {
        self.name =  name
    }
}

// Problem 2
class DinnerCrew {
    var members: [Souschef]
    
    init(members: [Souschef]) {
        self.members = members
    }
}

protocol Souschef {
    func chop(_ vegetable: String) -> String
    func rinse(_ vegetable:String) -> String
}

var deviousDinnerCrew = DinnerCrew(members: [Souschef]())

// Problem 3
protocol DogWalker {
    func throwBall(_ numberOfTimes:Int) -> Int
    func rubBelly()
}

class Neighbor: DogWalker {
    internal func throwBall(_ numberOfTimes: Int) -> Int {
    return 0
    }

    
    func throwBall(_ numberOfTimes:Int) {
        var count = 0
        while count < numberOfTimes {
            print("Go get it!")
            count += 1
        }
    }
    
    func rubBelly() {
        print("Rub rub")
    }
}
