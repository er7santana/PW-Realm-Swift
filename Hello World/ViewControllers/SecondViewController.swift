//
//  SecondViewController.swift
//  Hello World
//
//  Created by TMAN on 28/06/19.
//  Copyright © 2019 TMAN. All rights reserved.
//

import UIKit
import RealmSwift

class SecondViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let realm = try! Realm()
        let dogCount = realm.objects(Dog.self).count
        
        print("\(dogCount) dogs in the list")
    }
}
