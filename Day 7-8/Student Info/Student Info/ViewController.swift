//
//  ViewController.swift
//  Student Info
//
//  Created by Doğan Kılıç on 17/03/2017.
//  Copyright © 2017 Doğan Kılıç. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfName: UITextField!
    @IBOutlet weak var tfNumber: UITextField!
    @IBOutlet weak var tfCourse: UITextField!
    @IBOutlet weak var lbResult: UILabel!
    
    
    
    var studentList : [Student]!
    
    @IBAction func list(_ sender: Any) {
        
        Caro
        
        var result = ""
        
        for student in studentList{
            result = result + "\(student.name) \(student.number) \(student.courseName) \n"
        }
        
        lbResult.text = result
    }
    
    @IBAction func add(_ sender: Any) {
    
        let name = tfName.text!
        let number = tfNumber.text!
        let course = tfCourse.text!
        
        if !name.isEmpty && !number.isEmpty && !course.isEmpty
        {
            if let value = Int(number)
            {
                if let rawValue = CourseName(rawValue: course)
                {
                    let student = Student(name: name, number: value, courseName: rawValue)
                    
                    studentList.append(student)
                    
                    tfCourse.text = ""
                    tfName.text = ""
                    tfNumber.text = ""
                }
                else
                {
                    print("Girilen KURS yanlış")
                }
            }
            else
            {
                print("Girilen numara yanlış")
            }
        
        }
        else
        {
            print("Girdiler yanlış")
        }

    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        studentList = [Student]()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

