//
//  ViewController.swift
//  oct3
//
//  Created by Pavel Semenchenko on 04.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    
    let user : UnivercitySlave = Rector()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        user.name = "John Doe"
        
        label1.text = user.name
        
        /*
        let student = Student()
        student.name = "John Doe"
        student.direction = "Programming"
        student.city = "London"
        student.street = "Tower"
        student.house = 22
        
        label1.text = student.name
        label2.text = student.adress
        */
                
    }
    class UnivercitySlave {
        var name: String = ""
    }
    
    
    class Lector : UnivercitySlave {
        var direction: String = ""
    }
    
    class Rector : UnivercitySlave {
        var univercityIncome: Int = 0
        
        override var name: String {
            get {
                return "Ser, \(super.name)"
            } set(value) {
                super.name = value
                
            }
        }
    }
    
    class Junitor : UnivercitySlave {
        var mop: String = ""
    }
    
    class Student : UnivercitySlave {
        var direction: String = ""
        var city: String = ""
        var street: String = ""
        var house: Int = 0
        
        var adress: String {
            get {
                print("adress computing ...")
                return "\(city) st.\(street), \(house)"
            }
        }
    }
    
}

