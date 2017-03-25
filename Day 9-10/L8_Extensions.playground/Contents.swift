//: Playground - noun: a place where people can play

import UIKit

protocol Shape {
    func getArea() -> Double
    func getLength() -> Double
    func getColor() -> String
    func getNumberOfSide() -> Int
}

protocol WhoAreYou {
    func whoAmI()
}

class Rectangle: Shape, WhoAreYou {
    
    internal func whoAmI() {
        print("I am a Rectangle.")
    }
    
    internal func getNumberOfSide() -> Int {
        return 4
    }

    internal func getColor() -> String {
        return color
    }

    internal func getLength() -> Double {
        return (width + height) * 2
    }

    internal func getArea() -> Double {
        return width * height
    }


    let width:Double
    let height:Double
    let color:String
    
    init(width:Double, height:Double, color:String) {
        self.width = width
        self.height = height
        self.color = color
    }
}

var myRectangle = Rectangle.init(width: 10, height: 20, color: "Mavi")
myRectangle.height
myRectangle.width
myRectangle.getArea()
myRectangle.getLength()
myRectangle.getColor()
myRectangle.whoAmI()

class Paint {
    let shapes: [Shape]
    
    init(shapes: [Shape]) {
        self.shapes = shapes
    }
    
    func printColors()
    {
        print(shapes)
    }
}

var myPaint = Paint(shapes: [myRectangle])
myPaint.shapes.first


struct Circle : Shape, WhoAreYou {
    internal func whoAmI() {
        print("I am a Circle.")
    }

    internal func getNumberOfSide() -> Int {
        return 1
    }

    internal func getColor() -> String {
        return color
    }

    
    let radius: Double
    let color: String
    
    internal func getLength() -> Double {
       return 2 * M_PI * radius
    }

    internal func getArea() -> Double {
        return M_PI * radius * radius
    }
    
    init(radius: Double, color: String) {
        self.radius = radius
        self.color = color
    }
}

var myCircle = Circle(radius: 2, color: "Pembe")
myCircle.getArea()
myCircle.getLength()

var myPaint2 = Paint(shapes: [myCircle , myRectangle])
myPaint2.shapes.count

class Square: Shape{
    internal func getNumberOfSide() -> Int {
        return 4
    }

    internal func getColor() -> String {
        return color
    }

    internal func getLength() -> Double {
        return 4 * width
    }

    internal func getArea() -> Double {
        return width * width
    }

    let width : Double
    let color : String
    
    init(_ width:Double,_ color: String) {
        self.width = width
        self.color = color
    }
}

var mySquare = Square(5, "Yeşil")
mySquare.getArea()
mySquare.getLength()

var myPaint3 = Paint(shapes: [myCircle, myRectangle, myRectangle, mySquare])
myPaint3.printColors()


extension Shape {
    func computeAreaPlusLenght() -> Double
    {
        return self.getArea() + self.getLength()
    }
}

myCircle.computeAreaPlusLenght()
myRectangle.computeAreaPlusLenght()

extension Circle {
    
    func getAreaAsMm() -> Double
    {
        return self.radius * self.radius * M_PI * 10
    }
    
    func computeAreaPlusLenght() -> Double
    {
        return self.getArea() + self.getLength()
    }
}

myCircle.getAreaAsMm()

protocol House{
    func getValue() -> Int
    func getArea() -> Int
    func getNumberOfBath() -> Int
}

class Mustakil : House{
    internal func getNumberOfBath() -> Int {
        return numberOfBath
    }

    internal func getArea() -> Int {
        return area
    }

    internal func getValue() -> Int {
        return value
    }

    let value: Int
    let area: Int
    let numberOfBath: Int
    
    init(_ value:Int, _ area:Int, _ numberOfBath:Int) {
        self.value = value
        self.numberOfBath = numberOfBath
        self.area = area
    }
}

var myMustakil = Mustakil(600, 100, 0)


class Apartment : House{
    internal func getNumberOfBath() -> Int {
        return numberOfBath
    }
    
    internal func getArea() -> Int {
        return area
    }
    
    internal func getValue() -> Int {
        return value
    }
    
    let value: Int
    let area: Int
    let numberOfBath: Int
    
    init(_ value:Int, _ area:Int, _ numberOfBath:Int) {
        self.value = value
        self.numberOfBath = numberOfBath
        self.area = area
    }
}

var myApartment = Apartment(1200, 90, 1)

class Residance : House{
    internal func getNumberOfBath() -> Int {
        return numberOfBath
    }
    
    internal func getArea() -> Int {
        return area
    }
    
    internal func getValue() -> Int {
        return value
    }
    
    let value: Int
    let area: Int
    let numberOfBath: Int
    
    init(_ value:Int, _ area:Int, _ numberOfBath:Int) {
        self.value = value
        self.numberOfBath = numberOfBath
        self.area = area
    }
}

var meyApartment = Residance(3500, 150, 2)











