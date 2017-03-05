//: Playground - noun: a place where people can play

import UIKit

func topla(_ sayi1:Int, _ sayi2:Int) -> Int
{
    return sayi1 + sayi2
}


func cikar(_ sayi1:Int, _ sayi2:Int) -> Int
{
    return sayi1 - sayi2
}

func interesting(_ var1: Int, _ var2: Int) -> Int
{
    let random = Int(arc4random() % 2)
    
    if(random == 1)
    {
        return topla(var1, var2)
    }
    else
    {
        return cikar(var1, var2)
    }
}

print(interesting(10,5))


func minmax(array: [Int]) -> (min: Int, max: Int)
{
    var currentMin = array[0]
    var currentMax = array[0]
    
    for value in array[1..<array.count]
    {
        if value > currentMax
        {
            currentMax = value
        }
        else if (value < currentMin)
        {
            currentMin = value
        }
    }
    
    return (currentMin, currentMax)
}

let result = minmax(array: [2, 4, 95, 48 , -2 ,-36, -36])

print("min is \(result.min), max is \(result.max)")



var deger = input.text!

if(Int(deger) != nil)
{
    print("basarili")
}
else
{
    print("basarisiz")
}

















