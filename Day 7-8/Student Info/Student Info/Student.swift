//
//  Student.swift
//  Student Info
//
//  Created by Doğan Kılıç on 17/03/2017.
//  Copyright © 2017 Doğan Kılıç. All rights reserved.
//

import Foundation

class Student {
    
    var name : String
    var number : Int
    var courseName : CourseName
    
    init(name : String, number : Int, courseName : CourseName) {
        self.courseName = courseName
        self.number = number
        self.name = name
    }
}

enum CourseName : String {
    case ios = "ios", android = "android"
}
