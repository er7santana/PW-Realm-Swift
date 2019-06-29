//
//  ThirdViewController.swift
//  Hello World
//
//  Created by TMAN on 29/06/19.
//  Copyright © 2019 TMAN. All rights reserved.
//

import UIKit
import RealmSwift

class ThirdViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let realm = try! Realm()
        
        let random = Int(arc4random_uniform(99))
        
        let dog = Dog()
        dog.name = "Dog \(random)"
        dog.age = random
        
        try! realm.write {
            realm.add(dog)
        }
        
        print("\(dog.name) added")
    }

}
